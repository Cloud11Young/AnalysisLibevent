#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "event_core_static" for configuration "Release"
set_property(TARGET event_core_static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(event_core_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/event_core.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS event_core_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_event_core_static "${_IMPORT_PREFIX}/lib/event_core.lib" )

# Import target "event_core_shared" for configuration "Release"
set_property(TARGET event_core_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(event_core_shared PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/event_core.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "ws2_32"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/event_core.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS event_core_shared )
list(APPEND _IMPORT_CHECK_FILES_FOR_event_core_shared "${_IMPORT_PREFIX}/lib/event_core.lib" "${_IMPORT_PREFIX}/lib/event_core.dll" )

# Import target "event_extra_static" for configuration "Release"
set_property(TARGET event_extra_static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(event_extra_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/event_extra.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS event_extra_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_event_extra_static "${_IMPORT_PREFIX}/lib/event_extra.lib" )

# Import target "event_extra_shared" for configuration "Release"
set_property(TARGET event_extra_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(event_extra_shared PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/event_extra.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "ws2_32;event_core_shared"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/event_extra.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS event_extra_shared )
list(APPEND _IMPORT_CHECK_FILES_FOR_event_extra_shared "${_IMPORT_PREFIX}/lib/event_extra.lib" "${_IMPORT_PREFIX}/lib/event_extra.dll" )

# Import target "event_static" for configuration "Release"
set_property(TARGET event_static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(event_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/event.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS event_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_event_static "${_IMPORT_PREFIX}/lib/event.lib" )

# Import target "event_shared" for configuration "Release"
set_property(TARGET event_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(event_shared PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/event.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "ws2_32"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/event.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS event_shared )
list(APPEND _IMPORT_CHECK_FILES_FOR_event_shared "${_IMPORT_PREFIX}/lib/event.lib" "${_IMPORT_PREFIX}/lib/event.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
