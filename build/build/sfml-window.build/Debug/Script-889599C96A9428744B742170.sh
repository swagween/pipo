#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/src/SFML/Window
  /Applications/CMake.app/Contents/bin/cmake -E cmake_symlink_library /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/Debug/libsfml-window-d.2.5.1.dylib /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/Debug/libsfml-window-d.2.5.dylib /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/Debug/libsfml-window-d.dylib
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/src/SFML/Window
  /Applications/CMake.app/Contents/bin/cmake -E cmake_symlink_library /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/Release/libsfml-window.2.5.1.dylib /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/Release/libsfml-window.2.5.dylib /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/Release/libsfml-window.dylib
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/src/SFML/Window
  /Applications/CMake.app/Contents/bin/cmake -E cmake_symlink_library /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/MinSizeRel/libsfml-window.2.5.1.dylib /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/MinSizeRel/libsfml-window.2.5.dylib /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/MinSizeRel/libsfml-window.dylib
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/src/SFML/Window
  /Applications/CMake.app/Contents/bin/cmake -E cmake_symlink_library /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/RelWithDebInfo/libsfml-window.2.5.1.dylib /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/RelWithDebInfo/libsfml-window.2.5.dylib /Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/RelWithDebInfo/libsfml-window.dylib
fi

