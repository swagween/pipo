//
//  main.cpp
//  Gems Title
//

#include <SFML/Graphics.hpp>
#include <iostream>
#include <chrono>
#include "Emitter.hpp"

#include <imgui-SFML.h>
#include <imgui.h>
#include <random>

#include <filesystem>

namespace fs = std::filesystem;

fs::path find_resources(fs::path exe) {
    auto check = [](fs::path const& prefix) {
        auto path = prefix / "resources";
        if (fs::is_directory(path)) { return path; }
        return fs::path{};
    };
    while (!exe.empty()) {
        if (auto ret = check(exe); !ret.empty()) { return ret; }
        auto parent = exe.parent_path();
        if (exe == parent) { break; }
        exe = std::move(parent);
    }
    return {};
}

namespace {

sf::Color PIPO_GOLD = sf::Color(206, 151, 71);

std::vector<gen::Emitter> gems{};
int spawn_rate = 2;
float part_spawn_rate = 0.05;
float gravity = 0.01f;
float wind = 0.001f;
float expulsion = 0.01;
int dynamic_time_step = 100;
bool grav = false;

static void show_overlay(bool* debug) {
    const float PAD = 10.0f;
    static int corner = 0;
    ImGuiIO& io = ImGui::GetIO();
    ImGuiWindowFlags window_flags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_AlwaysAutoResize | ImGuiWindowFlags_NoSavedSettings | ImGuiWindowFlags_NoFocusOnAppearing | ImGuiWindowFlags_NoNav;
    if (corner != -1) {
        const ImGuiViewport* viewport = ImGui::GetMainViewport();
        ImVec2 work_pos = viewport->WorkPos; // Use work area to avoid menu-bar/task-bar, if any!
        ImVec2 work_size = viewport->WorkSize;
        ImVec2 window_pos, window_pos_pivot;
        window_pos.x = (corner & 1) ? (work_pos.x + work_size.x - PAD) : (work_pos.x + PAD);
        window_pos.y = (corner & 2) ? (work_pos.y + work_size.y - PAD) : (work_pos.y + PAD);
        window_pos_pivot.x = (corner & 1) ? 1.0f : 0.0f;
        window_pos_pivot.y = (corner & 2) ? 1.0f : 0.0f;
        ImGui::SetNextWindowPos(window_pos, ImGuiCond_Always, window_pos_pivot);
        window_flags |= ImGuiWindowFlags_NoMove;
    }
    ImGui::SetNextWindowBgAlpha(0.35f); // Transparent background
    if (ImGui::Begin("Debug Mode", debug, window_flags)) {
        ImGui::Text("Debug Window\n" "(right-click to change position)");
        ImGui::Separator();
        if (ImGui::IsMousePosValid()) {
            ImGui::Text("Mouse Position: (%.1f,%.1f)", io.MousePos.x, io.MousePos.y);
        } else {
            ImGui::Text("Mouse Position: <invalid>");
        }
        ImGui::Text("Gems: %lu", gems.size());
        int total_particles{};
        for(auto& gem : gems) {
            total_particles += gem.num_particles();
        }
        ImGui::Text("Total Particles: %i", total_particles);
        if (ImGui::BeginPopupContextWindow()) {
            if (ImGui::MenuItem("Custom",       NULL, corner == -1)) corner = -1;
            if (ImGui::MenuItem("Top-left",     NULL, corner == 0)) corner = 0;
            if (ImGui::MenuItem("Top-right",    NULL, corner == 1)) corner = 1;
            if (ImGui::MenuItem("Bottom-left",  NULL, corner == 2)) corner = 2;
            if (ImGui::MenuItem("Bottom-right", NULL, corner == 3)) corner = 3;
            ImGui::EndPopup();
        }
    }
    ImGui::End();
    if (ImGui::Begin("Parameters")) {
        ImGui::Text("Adjust Variables");
        ImGui::SliderInt("##rate", &spawn_rate, 0, 30, "Spawn Rate");
        ImGui::SliderFloat("##partrate", &part_spawn_rate, 60.0f, 0.0f, "Particle Spawn Rate", ImGuiSliderFlags_Logarithmic);
        ImGui::SliderFloat("##exprate", &expulsion, 0.0f, 0.05f, "Particle Expulsion Force", ImGuiSliderFlags_Logarithmic);
        ImGui::SliderFloat("##grav", &gravity, 0.0f, 10.0f, "Gravity", ImGuiSliderFlags_Logarithmic);
        ImGui::SliderFloat("##wind", &wind, 0.0f, 10.0f, "Wind", ImGuiSliderFlags_Logarithmic);
        if(ImGui::Button("Toggle Attractor")) {
            grav = !grav;
        }
    }
    ImGui::End();
}

const sf::Vector2<uint32_t> aspect_ratio { 3840, 2160 };
const sf::Vector2<uint32_t> screen_dimensions { aspect_ratio.x / 4, aspect_ratio.y / 4 };
const int TIME_STEP_MILLI = 100;

float G = 0.8f;

void run(char** argv) {
    
    //load textures
    std::string resource_path = find_resources(argv[0]);
    
    sf::Texture tex_gem{};
    sf::Texture tex_gemlong{};
    sf::Texture tex_sparkle_big{};
    sf::Texture tex_sparkle_small{};
    sf::Texture tex_menu_item_startgame{};
    tex_gem.loadFromFile(resource_path + "/gem2.png");
    tex_gemlong.loadFromFile(resource_path + "/gem_long2.png");
    tex_sparkle_big.loadFromFile(resource_path + "/sparkle_big.png");
    tex_sparkle_small.loadFromFile(resource_path + "/sparkle_small.png");
    tex_menu_item_startgame.loadFromFile(resource_path + "/menu_item_startgame.png");
    sf::Sprite spr_gem{};
    sf::Sprite spr_gemlong{};
    sf::Sprite spr_sparkle_big{};
    sf::Sprite spr_sparkle_small{};
    sf::Sprite spr_menu_item_startgame{};
    spr_gem.setTexture(tex_gem);
    spr_gemlong.setTexture(tex_gemlong);
    spr_sparkle_big.setTexture(tex_sparkle_big);
    spr_sparkle_small.setTexture(tex_sparkle_small);
    spr_menu_item_startgame.setTexture(tex_menu_item_startgame);
    
    
    bool debug_mode = false;
    //init clock
    using Clock = std::chrono::steady_clock;
    using Time = std::chrono::duration<float>;
    auto elapsed_time = Time{};
    auto time_step = Time{std::chrono::milliseconds(TIME_STEP_MILLI)}; //FPS
    //some SFML variables for drawing a basic window + background
    auto window = sf::RenderWindow{sf::VideoMode{screen_dimensions.x, screen_dimensions.y}, "Pipo v1.0"};
    ImGui::SFML::Init(window);
    
    window.setVerticalSyncEnabled(true);
    sf::RectangleShape background{};
    background.setSize(static_cast<sf::Vector2<float> >(screen_dimensions));
    background.setPosition(0, 0);
    background.setFillColor(sf::Color(20, 20, 30));
    
    
    //game variables
    gen::ElementBehavior comet_trail{};
    comet_trail.rate = 0.008;
    comet_trail.rate_variance = 0.01;
    comet_trail.expulsion_force = 0.01;
    comet_trail.expulsion_variance = 0.5;
    comet_trail.cone = 0.5;
    
    
    //game loop
    sf::Clock deltaClock{};
    auto start = Clock::now();
    int frame{};
    while (window.isOpen()) {
        frame++;
        auto now = Clock::now();
        auto dt = Time{now - start};
        start = now;
        elapsed_time += dt;
        
        //SFML event variable
        auto event = sf::Event{};
        //check window events
        while (window.pollEvent(event)) {
            ImGui::SFML::ProcessEvent(event);
            switch(event.type) {
                case sf::Event::Closed:
                    return;
                case sf::Event::KeyPressed:
                    //player can refresh grid by pressing 'Z'
                    if(event.key.code == sf::Keyboard::Escape) {
                        return;
                    }
                    if(event.key.code == sf::Keyboard::D) {
                        debug_mode = !debug_mode;
                    }
                    break;
                    if(event.key.code == sf::Keyboard::G) {
                        grav = !grav;
                    }
                    break;
                default:
                    break;
            }
        }
        
        //game logic and rendering
        if(elapsed_time > time_step) {
            //generate random number with a uniform distribution
            int r = components::random_range(0, 100);
            if(r > 100 - spawn_rate) {
                int randx = components::random_range(0, screen_dimensions.x);
                int randy = components::random_range(0, screen_dimensions.y);
                int randv = components::random_range(40, 62);
                int randa = components::random_range(-10, 10);
                gems.push_back(gen::Emitter(comet_trail));
                gems.back().set_position(randx, -20);
                gems.back().apply_force({(float)randa*0.1f, (float)0.1*randv});
            }
            for(int i = (int)gems.size() - 1; i >= 0; --i) {
                if(grav) {
                    ImGuiIO& io = ImGui::GetIO();
                    float gx = gems.at(i).get_physics().position.x;
                    float gy = gems.at(i).get_physics().position.y;
                    float mx = io.MousePos.x;
                    float my = io.MousePos.y;
                    
                    float force_x = mx - gx;
                    float force_y = my - gy;
                    float mag = sqrt((force_x*force_x) + (force_y*force_y));
                    float str = G / mag*0.8;
                    force_x *= str;
                    force_y *= str;
                    gems.at(i).set_friction(0.97);
                    gems.at(i).apply_force({force_x, force_y});
                }
                gems.at(i).update(dt);
                gems.at(i).set_rate(part_spawn_rate);
                gems.at(i).set_expulsion_force(expulsion);
                if(!grav) {
                    gems.at(i).set_friction(0.999f);
                    gems.at(i).apply_force({wind, gravity});
                }
                if(gems.at(i).get_physics().position.y > screen_dimensions.y*2 || gems.size() > 50) {
                    gems.erase(gems.begin() + i);
                }
            }
        }
        
        //ImGui update
        ImGui::SFML::Update(window, deltaClock.restart());
        
        //ImGui stuff
        show_overlay(&debug_mode);
        
        //my renders
        window.clear();
        window.draw(background);
        
        //GUI
        spr_menu_item_startgame.setPosition(screen_dimensions.x/2 - 115, screen_dimensions.y/2 - 15 + sin(frame*0.02)*5);
        window.draw(spr_menu_item_startgame);
        
        //gems
        for(auto& gem : gems) {
            spr_gemlong.setPosition(gem.get_physics().position.x - 4, gem.get_physics().position.y - 4);
            window.draw(spr_gemlong);
            for(auto& particle : gem.get_particles()) {
                int rand = components::random_range(0, 3);
                spr_sparkle_small.setPosition(particle.physics.position.x, particle.physics.position.y);
                spr_sparkle_big.setPosition(particle.physics.position.x, particle.physics.position.y);
                if(rand == 0) {
                    window.draw(spr_sparkle_big);
                } else {
                    window.draw(spr_sparkle_small);
                }
            }
        }
        
        
        ImGui::SFML::Render(window);
        window.display();
    }
    
}

} //end namespace

int main(int argc, char** argv) {
    assert(argc > 0);
    run(argv);
    ImGui::SFML::Shutdown();
    return 0;
}


