#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/alex_frasca/Documents/pipo/build/_deps/imgui-sfml-subbuild
  make -f /Users/alex_frasca/Documents/pipo/build/_deps/imgui-sfml-subbuild/CMakeScripts/ReRunCMake.make
fi

