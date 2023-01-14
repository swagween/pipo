#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/alex_frasca/Documents/pipo/build
  make -f /Users/alex_frasca/Documents/pipo/build/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/alex_frasca/Documents/pipo/build
  make -f /Users/alex_frasca/Documents/pipo/build/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/alex_frasca/Documents/pipo/build
  make -f /Users/alex_frasca/Documents/pipo/build/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/alex_frasca/Documents/pipo/build
  make -f /Users/alex_frasca/Documents/pipo/build/CMakeScripts/ReRunCMake.make
fi

