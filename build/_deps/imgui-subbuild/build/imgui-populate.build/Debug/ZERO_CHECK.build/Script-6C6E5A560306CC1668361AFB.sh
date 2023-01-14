#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/alex_frasca/Documents/pipo/build/_deps/imgui-subbuild
  make -f /Users/alex_frasca/Documents/pipo/build/_deps/imgui-subbuild/CMakeScripts/ReRunCMake.make
fi

