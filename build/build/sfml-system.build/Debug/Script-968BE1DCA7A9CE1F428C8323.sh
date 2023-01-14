#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/src/SFML/System
  /Applications/CMake.app/Contents/bin/cmake -E cmake_symlink_library /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/Debug/libsfml-system-d.2.5.1.dylib /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/Debug/libsfml-system-d.2.5.dylib /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/Debug/libsfml-system-d.dylib
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/src/SFML/System
  /Applications/CMake.app/Contents/bin/cmake -E cmake_symlink_library /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/Release/libsfml-system.2.5.1.dylib /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/Release/libsfml-system.2.5.dylib /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/Release/libsfml-system.dylib
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/src/SFML/System
  /Applications/CMake.app/Contents/bin/cmake -E cmake_symlink_library /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/MinSizeRel/libsfml-system.2.5.1.dylib /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/MinSizeRel/libsfml-system.2.5.dylib /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/MinSizeRel/libsfml-system.dylib
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/src/SFML/System
  /Applications/CMake.app/Contents/bin/cmake -E cmake_symlink_library /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/RelWithDebInfo/libsfml-system.2.5.1.dylib /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/RelWithDebInfo/libsfml-system.2.5.dylib /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/RelWithDebInfo/libsfml-system.dylib
fi

