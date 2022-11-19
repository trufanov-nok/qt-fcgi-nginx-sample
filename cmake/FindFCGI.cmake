find_path(FCGI_DIR NAMES fcgi_stdio.h)
find_library(FCGI_LIB NAMES fcgi)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(FCGI DEFAULT_MSG FCGI_DIR FCGI_LIB)

# Copy the results to the output variables.
if(FCGI_FOUND)
  set(FCGI_LIB ${FCGI_LIB})
  set(FCGI_DIR ${FCGI_DIR})
endif()

mark_as_advanced(FCGI_DIR FCGI_LIB)
