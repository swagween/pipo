#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/alex_frasca/Documents/pipo/build/_deps/sfml-subbuild
  /Applications/CMake.app/Contents/bin/cmake -E make_directory /Users/alex_frasca/Documents/pipo/build/_deps/sfml-subbuild/CMakeFiles/$CONFIGURATION$EFFECTIVE_PLATFORM_NAME
  /Applications/CMake.app/Contents/bin/cmake -E touch /Users/alex_frasca/Documents/pipo/build/_deps/sfml-subbuild/CMakeFiles/$CONFIGURATION$EFFECTIVE_PLATFORM_NAME/sfml-populate-complete
  /Applications/CMake.app/Contents/bin/cmake -E touch /Users/alex_frasca/Documents/pipo/build/_deps/sfml-subbuild/sfml-populate-prefix/src/sfml-populate-stamp/$CONFIGURATION$EFFECTIVE_PLATFORM_NAME/sfml-populate-done
fi

