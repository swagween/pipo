#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/alex_frasca/Documents/pipo/build/_deps/imgui-sfml-subbuild
  /Applications/CMake.app/Contents/bin/cmake -Dcfgdir=/$CONFIGURATION$EFFECTIVE_PLATFORM_NAME -P /Users/alex_frasca/Documents/pipo/build/_deps/imgui-sfml-subbuild/imgui-sfml-populate-prefix/tmp/imgui-sfml-populate-mkdirs.cmake
  /Applications/CMake.app/Contents/bin/cmake -E touch /Users/alex_frasca/Documents/pipo/build/_deps/imgui-sfml-subbuild/imgui-sfml-populate-prefix/src/imgui-sfml-populate-stamp/$CONFIGURATION$EFFECTIVE_PLATFORM_NAME/imgui-sfml-populate-mkdir
fi

