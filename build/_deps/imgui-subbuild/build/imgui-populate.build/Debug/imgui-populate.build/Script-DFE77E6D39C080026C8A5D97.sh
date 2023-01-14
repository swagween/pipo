#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/alex_frasca/Documents/pipo/build/_deps/imgui-subbuild
  /Applications/CMake.app/Contents/bin/cmake -E make_directory /Users/alex_frasca/Documents/pipo/build/_deps/imgui-subbuild/CMakeFiles/$CONFIGURATION$EFFECTIVE_PLATFORM_NAME
  /Applications/CMake.app/Contents/bin/cmake -E touch /Users/alex_frasca/Documents/pipo/build/_deps/imgui-subbuild/CMakeFiles/$CONFIGURATION$EFFECTIVE_PLATFORM_NAME/imgui-populate-complete
  /Applications/CMake.app/Contents/bin/cmake -E touch /Users/alex_frasca/Documents/pipo/build/_deps/imgui-subbuild/imgui-populate-prefix/src/imgui-populate-stamp/$CONFIGURATION$EFFECTIVE_PLATFORM_NAME/imgui-populate-done
fi

