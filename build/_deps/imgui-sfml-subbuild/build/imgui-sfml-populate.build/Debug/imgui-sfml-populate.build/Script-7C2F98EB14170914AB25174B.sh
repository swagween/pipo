#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/alex_frasca/Documents/pipo/build/_deps/imgui-sfml-src
  /Applications/CMake.app/Contents/bin/cmake -P /Users/alex_frasca/Documents/pipo/build/_deps/imgui-sfml-subbuild/imgui-sfml-populate-prefix/tmp/imgui-sfml-populate-gitupdate.cmake
fi

