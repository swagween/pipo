#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/alex_frasca/Documents/pipo/build/_deps
  /Applications/CMake.app/Contents/bin/cmake -P /Users/alex_frasca/Documents/pipo/build/_deps/imgui-sfml-subbuild/imgui-sfml-populate-prefix/tmp/imgui-sfml-populate-gitclone.cmake
  /Applications/CMake.app/Contents/bin/cmake -E touch /Users/alex_frasca/Documents/pipo/build/_deps/imgui-sfml-subbuild/imgui-sfml-populate-prefix/src/imgui-sfml-populate-stamp/$CONFIGURATION$EFFECTIVE_PLATFORM_NAME/imgui-sfml-populate-download
fi

