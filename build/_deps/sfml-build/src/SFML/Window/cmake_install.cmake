# Install script for directory: /Users/alex_frasca/Documents/pipo/build/_deps/sfml-src/src/SFML/Window

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/objdump")
endif()

set(CMAKE_BINARY_DIR "/Users/alex_frasca/Documents/pipo/build")

if(CMAKE_INSTALL_COMPONENT STREQUAL "bin" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
      "/Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/Debug/libsfml-window-d.2.5.1.dylib"
      "/Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/Debug/libsfml-window-d.2.5.dylib"
      )
    foreach(file
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window-d.2.5.1.dylib"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window-d.2.5.dylib"
        )
      if(EXISTS "${file}" AND
         NOT IS_SYMLINK "${file}")
        execute_process(COMMAND /usr/bin/install_name_tool
          -delete_rpath "/Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/Debug"
          "${file}")
        if(CMAKE_INSTALL_DO_STRIP)
          execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "${file}")
        endif()
      endif()
    endforeach()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
      "/Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/Release/libsfml-window.2.5.1.dylib"
      "/Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/Release/libsfml-window.2.5.dylib"
      )
    foreach(file
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window.2.5.1.dylib"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window.2.5.dylib"
        )
      if(EXISTS "${file}" AND
         NOT IS_SYMLINK "${file}")
        execute_process(COMMAND /usr/bin/install_name_tool
          -delete_rpath "/Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/Release"
          "${file}")
        if(CMAKE_INSTALL_DO_STRIP)
          execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "${file}")
        endif()
      endif()
    endforeach()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
      "/Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/MinSizeRel/libsfml-window.2.5.1.dylib"
      "/Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/MinSizeRel/libsfml-window.2.5.dylib"
      )
    foreach(file
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window.2.5.1.dylib"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window.2.5.dylib"
        )
      if(EXISTS "${file}" AND
         NOT IS_SYMLINK "${file}")
        execute_process(COMMAND /usr/bin/install_name_tool
          -delete_rpath "/Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/MinSizeRel"
          "${file}")
        if(CMAKE_INSTALL_DO_STRIP)
          execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "${file}")
        endif()
      endif()
    endforeach()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
      "/Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/RelWithDebInfo/libsfml-window.2.5.1.dylib"
      "/Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/RelWithDebInfo/libsfml-window.2.5.dylib"
      )
    foreach(file
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window.2.5.1.dylib"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window.2.5.dylib"
        )
      if(EXISTS "${file}" AND
         NOT IS_SYMLINK "${file}")
        execute_process(COMMAND /usr/bin/install_name_tool
          -delete_rpath "/Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/RelWithDebInfo"
          "${file}")
        if(CMAKE_INSTALL_DO_STRIP)
          execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "${file}")
        endif()
      endif()
    endforeach()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "bin" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/Debug/libsfml-window-d.dylib")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window-d.dylib" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window-d.dylib")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/Debug"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window-d.dylib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window-d.dylib")
      endif()
    endif()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/Release/libsfml-window.dylib")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window.dylib" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window.dylib")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/Release"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window.dylib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window.dylib")
      endif()
    endif()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/MinSizeRel/libsfml-window.dylib")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window.dylib" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window.dylib")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/MinSizeRel"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window.dylib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window.dylib")
      endif()
    endif()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/RelWithDebInfo/libsfml-window.dylib")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window.dylib" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window.dylib")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/Users/alex_frasca/Documents/pipo/build/_deps/sfml-build/lib/RelWithDebInfo"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window.dylib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window.dylib")
      endif()
    endif()
  endif()
endif()

