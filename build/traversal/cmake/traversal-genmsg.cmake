# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "traversal: 1 messages, 3 services")

set(MSG_I_FLAGS "-Itraversal:/home/gokul/galileo2023/src/traversal/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(traversal_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/gokul/galileo2023/src/traversal/msg/WheelRpm.msg" NAME_WE)
add_custom_target(_traversal_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "traversal" "/home/gokul/galileo2023/src/traversal/msg/WheelRpm.msg" ""
)

get_filename_component(_filename "/home/gokul/galileo2023/src/traversal/srv/rotate.srv" NAME_WE)
add_custom_target(_traversal_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "traversal" "/home/gokul/galileo2023/src/traversal/srv/rotate.srv" ""
)

get_filename_component(_filename "/home/gokul/galileo2023/src/traversal/srv/move.srv" NAME_WE)
add_custom_target(_traversal_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "traversal" "/home/gokul/galileo2023/src/traversal/srv/move.srv" ""
)

get_filename_component(_filename "/home/gokul/galileo2023/src/traversal/srv/user_input.srv" NAME_WE)
add_custom_target(_traversal_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "traversal" "/home/gokul/galileo2023/src/traversal/srv/user_input.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(traversal
  "/home/gokul/galileo2023/src/traversal/msg/WheelRpm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/traversal
)

### Generating Services
_generate_srv_cpp(traversal
  "/home/gokul/galileo2023/src/traversal/srv/rotate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/traversal
)
_generate_srv_cpp(traversal
  "/home/gokul/galileo2023/src/traversal/srv/move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/traversal
)
_generate_srv_cpp(traversal
  "/home/gokul/galileo2023/src/traversal/srv/user_input.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/traversal
)

### Generating Module File
_generate_module_cpp(traversal
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/traversal
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(traversal_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(traversal_generate_messages traversal_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gokul/galileo2023/src/traversal/msg/WheelRpm.msg" NAME_WE)
add_dependencies(traversal_generate_messages_cpp _traversal_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gokul/galileo2023/src/traversal/srv/rotate.srv" NAME_WE)
add_dependencies(traversal_generate_messages_cpp _traversal_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gokul/galileo2023/src/traversal/srv/move.srv" NAME_WE)
add_dependencies(traversal_generate_messages_cpp _traversal_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gokul/galileo2023/src/traversal/srv/user_input.srv" NAME_WE)
add_dependencies(traversal_generate_messages_cpp _traversal_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(traversal_gencpp)
add_dependencies(traversal_gencpp traversal_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS traversal_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(traversal
  "/home/gokul/galileo2023/src/traversal/msg/WheelRpm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/traversal
)

### Generating Services
_generate_srv_eus(traversal
  "/home/gokul/galileo2023/src/traversal/srv/rotate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/traversal
)
_generate_srv_eus(traversal
  "/home/gokul/galileo2023/src/traversal/srv/move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/traversal
)
_generate_srv_eus(traversal
  "/home/gokul/galileo2023/src/traversal/srv/user_input.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/traversal
)

### Generating Module File
_generate_module_eus(traversal
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/traversal
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(traversal_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(traversal_generate_messages traversal_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gokul/galileo2023/src/traversal/msg/WheelRpm.msg" NAME_WE)
add_dependencies(traversal_generate_messages_eus _traversal_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gokul/galileo2023/src/traversal/srv/rotate.srv" NAME_WE)
add_dependencies(traversal_generate_messages_eus _traversal_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gokul/galileo2023/src/traversal/srv/move.srv" NAME_WE)
add_dependencies(traversal_generate_messages_eus _traversal_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gokul/galileo2023/src/traversal/srv/user_input.srv" NAME_WE)
add_dependencies(traversal_generate_messages_eus _traversal_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(traversal_geneus)
add_dependencies(traversal_geneus traversal_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS traversal_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(traversal
  "/home/gokul/galileo2023/src/traversal/msg/WheelRpm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/traversal
)

### Generating Services
_generate_srv_lisp(traversal
  "/home/gokul/galileo2023/src/traversal/srv/rotate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/traversal
)
_generate_srv_lisp(traversal
  "/home/gokul/galileo2023/src/traversal/srv/move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/traversal
)
_generate_srv_lisp(traversal
  "/home/gokul/galileo2023/src/traversal/srv/user_input.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/traversal
)

### Generating Module File
_generate_module_lisp(traversal
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/traversal
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(traversal_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(traversal_generate_messages traversal_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gokul/galileo2023/src/traversal/msg/WheelRpm.msg" NAME_WE)
add_dependencies(traversal_generate_messages_lisp _traversal_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gokul/galileo2023/src/traversal/srv/rotate.srv" NAME_WE)
add_dependencies(traversal_generate_messages_lisp _traversal_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gokul/galileo2023/src/traversal/srv/move.srv" NAME_WE)
add_dependencies(traversal_generate_messages_lisp _traversal_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gokul/galileo2023/src/traversal/srv/user_input.srv" NAME_WE)
add_dependencies(traversal_generate_messages_lisp _traversal_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(traversal_genlisp)
add_dependencies(traversal_genlisp traversal_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS traversal_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(traversal
  "/home/gokul/galileo2023/src/traversal/msg/WheelRpm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/traversal
)

### Generating Services
_generate_srv_nodejs(traversal
  "/home/gokul/galileo2023/src/traversal/srv/rotate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/traversal
)
_generate_srv_nodejs(traversal
  "/home/gokul/galileo2023/src/traversal/srv/move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/traversal
)
_generate_srv_nodejs(traversal
  "/home/gokul/galileo2023/src/traversal/srv/user_input.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/traversal
)

### Generating Module File
_generate_module_nodejs(traversal
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/traversal
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(traversal_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(traversal_generate_messages traversal_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gokul/galileo2023/src/traversal/msg/WheelRpm.msg" NAME_WE)
add_dependencies(traversal_generate_messages_nodejs _traversal_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gokul/galileo2023/src/traversal/srv/rotate.srv" NAME_WE)
add_dependencies(traversal_generate_messages_nodejs _traversal_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gokul/galileo2023/src/traversal/srv/move.srv" NAME_WE)
add_dependencies(traversal_generate_messages_nodejs _traversal_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gokul/galileo2023/src/traversal/srv/user_input.srv" NAME_WE)
add_dependencies(traversal_generate_messages_nodejs _traversal_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(traversal_gennodejs)
add_dependencies(traversal_gennodejs traversal_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS traversal_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(traversal
  "/home/gokul/galileo2023/src/traversal/msg/WheelRpm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/traversal
)

### Generating Services
_generate_srv_py(traversal
  "/home/gokul/galileo2023/src/traversal/srv/rotate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/traversal
)
_generate_srv_py(traversal
  "/home/gokul/galileo2023/src/traversal/srv/move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/traversal
)
_generate_srv_py(traversal
  "/home/gokul/galileo2023/src/traversal/srv/user_input.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/traversal
)

### Generating Module File
_generate_module_py(traversal
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/traversal
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(traversal_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(traversal_generate_messages traversal_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gokul/galileo2023/src/traversal/msg/WheelRpm.msg" NAME_WE)
add_dependencies(traversal_generate_messages_py _traversal_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gokul/galileo2023/src/traversal/srv/rotate.srv" NAME_WE)
add_dependencies(traversal_generate_messages_py _traversal_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gokul/galileo2023/src/traversal/srv/move.srv" NAME_WE)
add_dependencies(traversal_generate_messages_py _traversal_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gokul/galileo2023/src/traversal/srv/user_input.srv" NAME_WE)
add_dependencies(traversal_generate_messages_py _traversal_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(traversal_genpy)
add_dependencies(traversal_genpy traversal_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS traversal_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/traversal)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/traversal
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(traversal_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/traversal)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/traversal
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(traversal_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/traversal)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/traversal
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(traversal_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/traversal)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/traversal
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(traversal_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/traversal)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/traversal\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/traversal
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(traversal_generate_messages_py std_msgs_generate_messages_py)
endif()
