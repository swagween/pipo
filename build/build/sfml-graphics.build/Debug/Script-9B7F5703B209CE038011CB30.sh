#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/src/SFML/Graphics
  /Applications/CMake.app/Contents/bin/cmake -E cmake_symlink_library /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/Debug/libsfml-graphics-d.2.5.1.dylib /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/Debug/libsfml-graphics-d.2.5.dylib /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/Debug/libsfml-graphics-d.dylib
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/src/SFML/Graphics
  /Applications/CMake.app/Contents/bin/cmake -E cmake_symlink_library /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/Release/libsfml-graphics.2.5.1.dylib /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/Release/libsfml-graphics.2.5.dylib /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/Release/libsfml-graphics.dylib
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/src/SFML/Graphics
  /Applications/CMake.app/Contents/bin/cmake -E cmake_symlink_library /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/MinSizeRel/libsfml-graphics.2.5.1.dylib /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/MinSizeRel/libsfml-graphics.2.5.dylib /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/MinSizeRel/libsfml-graphics.dylib
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/src/SFML/Graphics
  /Applications/CMake.app/Contents/bin/cmake -E cmake_symlink_library /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/RelWithDebInfo/libsfml-graphics.2.5.1.dylib /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/RelWithDebInfo/libsfml-graphics.2.5.dylib /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/RelWithDebInfo/libsfml-graphics.dylib
fi

