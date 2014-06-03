#
# - Find TinyXML
# This module finds an installed TinyXML package.
#
# It sets the following variables:
#  TINYXML_FOUND       - Set to false, or undefined, if TinyXML isn't found.
#  TINYXML_INCLUDE_DIR - The TinyXML include directory.
#  TINYXML_LIBRARY     - The TinyXML library to link against.

FIND_PATH(TINYXML_INCLUDE_DIR tinyxml.h)
FIND_LIBRARY(TINYXML_LIBRARY NAMES tinyxml)

IF (TINYXML_INCLUDE_DIR AND TINYXML_LIBRARY)
  SET(TINYXML_FOUND TRUE)
ENDIF (TINYXML_INCLUDE_DIR AND TINYXML_LIBRARY)

IF (TINYXML_FOUND)
  # show which TinyXML was found only if not quiet
  IF (NOT TinyXML_FIND_QUIETLY)
    MESSAGE(STATUS "Found TinyXML: ${TINYXML_LIBRARY}")
    MESSAGE(STATUS "Found TinyXML: ${TINYXML_INCLUDE_DIR}")
    #include_directories(${TINYXML_INCLUDE_DIR})
    #target_link_libraries(steering-behaviors ${CPPCOMMONS_INCLUDE_DIR})

  ENDIF (NOT TinyXML_FIND_QUIETLY)

ELSE (TINYXML_FOUND)

  # fatal error if TinyXML is required but not found
  IF (TinyXML_FIND_REQUIRED)
    MESSAGE(FATAL_ERROR "Could not find TinyXML")
  ENDIF (TinyXML_FIND_REQUIRED)

ENDIF (TINYXML_FOUND)


