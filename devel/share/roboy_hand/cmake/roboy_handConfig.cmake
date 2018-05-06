# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(roboy_hand_CONFIG_INCLUDED)
  return()
endif()
set(roboy_hand_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("TRUE" STREQUAL "TRUE")
  set(roboy_hand_SOURCE_PREFIX /home/barisyazici/ss18_hand/src/roboy_hand)
  set(roboy_hand_DEVEL_PREFIX /home/barisyazici/ss18_hand/devel)
  set(roboy_hand_INSTALL_PREFIX "")
  set(roboy_hand_PREFIX ${roboy_hand_DEVEL_PREFIX})
else()
  set(roboy_hand_SOURCE_PREFIX "")
  set(roboy_hand_DEVEL_PREFIX "")
  set(roboy_hand_INSTALL_PREFIX /home/barisyazici/ss18_hand/install)
  set(roboy_hand_PREFIX ${roboy_hand_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'roboy_hand' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(roboy_hand_FOUND_CATKIN_PROJECT TRUE)

if(NOT "/home/barisyazici/ss18_hand/src/roboy_hand/include;/home/barisyazici/.local/include;/home/barisyazici/.local/include/gazebo-7;/usr/include;/home/barisyazici/.local/include/sdformat-4.1;/usr/include/ignition/math2;/usr/include/OGRE;/usr/include/OGRE/Terrain;/usr/include/OGRE/Paging " STREQUAL " ")
  set(roboy_hand_INCLUDE_DIRS "")
  set(_include_dirs "/home/barisyazici/ss18_hand/src/roboy_hand/include;/home/barisyazici/.local/include;/home/barisyazici/.local/include/gazebo-7;/usr/include;/home/barisyazici/.local/include/sdformat-4.1;/usr/include/ignition/math2;/usr/include/OGRE;/usr/include/OGRE/Terrain;/usr/include/OGRE/Paging")
  if(NOT " " STREQUAL " ")
    set(_report "Check the issue tracker '' and consider creating a ticket if the problem has not been reported yet.")
  elseif(NOT " " STREQUAL " ")
    set(_report "Check the website '' for information and consider reporting the problem.")
  else()
    set(_report "Report the problem to the maintainer 'Alona Kharchenko <unicorn@roboy.org>, Simon Trendel <simon.trendel@tum.de>' and request to fix the problem.")
  endif()
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${roboy_hand_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'roboy_hand' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  ${_report}")
      endif()
    else()
      message(FATAL_ERROR "Project 'roboy_hand' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/barisyazici/ss18_hand/src/roboy_hand/${idir}'.  ${_report}")
    endif()
    _list_append_unique(roboy_hand_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "/home/barisyazici/.local/lib/libgazebo.so;/home/barisyazici/.local/lib/libgazebo_client.so;/home/barisyazici/.local/lib/libgazebo_gui.so;/home/barisyazici/.local/lib/libgazebo_sensors.so;/home/barisyazici/.local/lib/libgazebo_rendering.so;/home/barisyazici/.local/lib/libgazebo_physics.so;/home/barisyazici/.local/lib/libgazebo_ode.so;/home/barisyazici/.local/lib/libgazebo_transport.so;/home/barisyazici/.local/lib/libgazebo_msgs.so;/home/barisyazici/.local/lib/libgazebo_util.so;/home/barisyazici/.local/lib/libgazebo_common.so;/home/barisyazici/.local/lib/libgazebo_gimpact.so;/home/barisyazici/.local/lib/libgazebo_opcode.so;/home/barisyazici/.local/lib/libgazebo_opende_ou.so;/home/barisyazici/.local/lib/libgazebo_math.so;/home/barisyazici/.local/lib/libgazebo_ccd.so;/usr/lib/x86_64-linux-gnu/libboost_signals.so;/usr/lib/x86_64-linux-gnu/libboost_filesystem.so;/usr/lib/x86_64-linux-gnu/libboost_program_options.so;/usr/lib/x86_64-linux-gnu/libboost_regex.so;/usr/lib/x86_64-linux-gnu/libboost_iostreams.so;optimized;/usr/lib/x86_64-linux-gnu/libprotobuf.so;debug;/usr/lib/x86_64-linux-gnu/libprotobuf.so;-lpthread;/home/barisyazici/.local/lib/libsdformat.so;optimized;/usr/lib/x86_64-linux-gnu/libOgreMain.so;debug;/usr/lib/x86_64-linux-gnu/libOgreMain.so;/usr/lib/x86_64-linux-gnu/libboost_thread.so;/usr/lib/x86_64-linux-gnu/libboost_date_time.so;/usr/lib/x86_64-linux-gnu/libboost_system.so;/usr/lib/x86_64-linux-gnu/libboost_atomic.so;/usr/lib/x86_64-linux-gnu/libboost_chrono.so;/usr/lib/x86_64-linux-gnu/libpthread.so;optimized;/usr/lib/x86_64-linux-gnu/libOgreTerrain.so;debug;/usr/lib/x86_64-linux-gnu/libOgreTerrain.so;optimized;/usr/lib/x86_64-linux-gnu/libOgrePaging.so;debug;/usr/lib/x86_64-linux-gnu/libOgrePaging.so;/usr/lib/x86_64-linux-gnu/libignition-math2.so")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND roboy_hand_LIBRARIES ${library})
  elseif(TARGET ${library})
    list(APPEND roboy_hand_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND roboy_hand_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/barisyazici/ss18_hand/devel/lib;/opt/ros/kinetic/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(roboy_hand_LIBRARY_DIRS ${lib_path})
      list(APPEND roboy_hand_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'roboy_hand'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND roboy_hand_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(roboy_hand_EXPORTED_TARGETS "")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${roboy_hand_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "rosbag;message_runtime;message_generation;roboy_communication_middleware")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 roboy_hand_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${roboy_hand_dep}_FOUND)
      find_package(${roboy_hand_dep} REQUIRED NO_MODULE)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${roboy_hand_dep} REQUIRED NO_MODULE ${depend_list})
  endif()
  _list_append_unique(roboy_hand_INCLUDE_DIRS ${${roboy_hand_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(roboy_hand_LIBRARIES ${roboy_hand_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${roboy_hand_dep}_LIBRARIES})
  _list_append_deduplicate(roboy_hand_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(roboy_hand_LIBRARIES ${roboy_hand_LIBRARIES})

  _list_append_unique(roboy_hand_LIBRARY_DIRS ${${roboy_hand_dep}_LIBRARY_DIRS})
  list(APPEND roboy_hand_EXPORTED_TARGETS ${${roboy_hand_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${roboy_hand_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
