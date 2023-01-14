#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/alex_frasca/Documents/pipo/build/_deps
  /Applications/CMake.app/Contents/bin/cmake -P /Users/alex_frasca/Documents/pipo/build/_deps/sfml-subbuild/sfml-populate-prefix/src/sfml-populate-stamp/download-sfml-populate.cmake
  /Applications/CMake.app/Contents/bin/cmake -P /Users/alex_frasca/Documents/pipo/build/_deps/sfml-subbuild/sfml-populate-prefix/src/sfml-populate-stamp/verify-sfml-populate.cmake
  /Applications/CMake.app/Contents/bin/cmake -P /Users/alex_frasca/Documents/pipo/build/_deps/sfml-subbuild/sfml-populate-prefix/src/sfml-populate-stamp/extract-sfml-populate.cmake
  /Applications/CMake.app/Contents/bin/cmake -E touch /Users/alex_frasca/Documents/pipo/build/_deps/sfml-subbuild/sfml-populate-prefix/src/sfml-populate-stamp/$CONFIGURATION$EFFECTIVE_PLATFORM_NAME/sfml-populate-download
fi

