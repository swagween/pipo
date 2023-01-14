# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/alex_frasca/Documents/pipo/build/_deps/imgui-src"
  "/Users/alex_frasca/Documents/pipo/build/_deps/imgui-build"
  "/Users/alex_frasca/Documents/pipo/build/_deps/imgui-subbuild/imgui-populate-prefix"
  "/Users/alex_frasca/Documents/pipo/build/_deps/imgui-subbuild/imgui-populate-prefix/tmp"
  "/Users/alex_frasca/Documents/pipo/build/_deps/imgui-subbuild/imgui-populate-prefix/src/imgui-populate-stamp"
  "/Users/alex_frasca/Documents/pipo/build/_deps/imgui-subbuild/imgui-populate-prefix/src"
  "/Users/alex_frasca/Documents/pipo/build/_deps/imgui-subbuild/imgui-populate-prefix/src/imgui-populate-stamp"
)

set(configSubDirs Debug)
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/alex_frasca/Documents/pipo/build/_deps/imgui-subbuild/imgui-populate-prefix/src/imgui-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/alex_frasca/Documents/pipo/build/_deps/imgui-subbuild/imgui-populate-prefix/src/imgui-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
