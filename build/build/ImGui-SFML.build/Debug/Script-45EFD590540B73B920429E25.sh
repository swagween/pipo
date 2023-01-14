#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/alex_frasca/Documents/pipo/build/_deps/imgui-sfml-build
  /Applications/CMake.app/Contents/bin/cmake -E cmake_symlink_library /Users/alex_frasca/Documents/pipo/build/_deps/imgui-sfml-build/Debug/libImGui-SFML_d.dylib /Users/alex_frasca/Documents/pipo/build/_deps/imgui-sfml-build/Debug/libImGui-SFML_d.dylib /Users/alex_frasca/Documents/pipo/build/_deps/imgui-sfml-build/Debug/libImGui-SFML_d.dylib
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/alex_frasca/Documents/pipo/build/_deps/imgui-sfml-build
  /Applications/CMake.app/Contents/bin/cmake -E cmake_symlink_library /Users/alex_frasca/Documents/pipo/build/_deps/imgui-sfml-build/Release/libImGui-SFML.dylib /Users/alex_frasca/Documents/pipo/build/_deps/imgui-sfml-build/Release/libImGui-SFML.dylib /Users/alex_frasca/Documents/pipo/build/_deps/imgui-sfml-build/Release/libImGui-SFML.dylib
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/alex_frasca/Documents/pipo/build/_deps/imgui-sfml-build
  /Applications/CMake.app/Contents/bin/cmake -E cmake_symlink_library /Users/alex_frasca/Documents/pipo/build/_deps/imgui-sfml-build/MinSizeRel/libImGui-SFML.dylib /Users/alex_frasca/Documents/pipo/build/_deps/imgui-sfml-build/MinSizeRel/libImGui-SFML.dylib /Users/alex_frasca/Documents/pipo/build/_deps/imgui-sfml-build/MinSizeRel/libImGui-SFML.dylib
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/alex_frasca/Documents/pipo/build/_deps/imgui-sfml-build
  /Applications/CMake.app/Contents/bin/cmake -E cmake_symlink_library /Users/alex_frasca/Documents/pipo/build/_deps/imgui-sfml-build/RelWithDebInfo/libImGui-SFML.dylib /Users/alex_frasca/Documents/pipo/build/_deps/imgui-sfml-build/RelWithDebInfo/libImGui-SFML.dylib /Users/alex_frasca/Documents/pipo/build/_deps/imgui-sfml-build/RelWithDebInfo/libImGui-SFML.dylib
fi

