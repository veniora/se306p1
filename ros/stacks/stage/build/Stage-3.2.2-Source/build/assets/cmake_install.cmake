# Install script for directory: /home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/assets

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/ubuntu-11-10/se306p1/ros/stacks/stage")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "RELEASE")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/stage/assets" TYPE FILE FILES
    "/home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/assets/stagelogo.png"
    "/home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/assets/mains.png"
    "/home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/assets/death.png"
    "/home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/assets/question_mark.png"
    "/home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/assets/logo.png"
    "/home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/assets/mainspower.png"
    "/home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/assets/red.png"
    "/home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/assets/green.png"
    "/home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/assets/stall.png"
    "/home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/assets/blue.png"
    "/home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/assets/rgb.txt"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/stage" TYPE FILE FILES "/home/ubuntu-11-10/se306p1/ros/stacks/stage/build/Stage-3.2.2-Source/assets/rgb.txt")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

