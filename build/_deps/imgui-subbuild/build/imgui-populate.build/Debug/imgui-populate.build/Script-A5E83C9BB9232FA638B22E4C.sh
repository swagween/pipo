#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/alex_frasca/Documents/pipo/build/_deps/imgui-src
  /Applications/CMake.app/Contents/bin/cmake -P /Users/alex_frasca/Documents/pipo/build/_deps/imgui-subbuild/imgui-populate-prefix/tmp/imgui-populate-gitupdate.cmake
fi

