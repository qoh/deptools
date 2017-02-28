set(${PKG_SIMPLE_NAME}_INCLUDE_DIRS ${PKG_SOURCE__DIR}/src)
set(${PKG_SIMPLE_NAME}_LIBRARIES ${PKG_SOURCE__DIR}/src/lua51.lib)

get_filename_component(MSVC_DIR ${CMAKE_CXX_COMPILER} DIRECTORY)
set(MSVC_DIR ${MSVC_DIR}/../../..)
string(REPLACE "/" "\\" T___MSVC_DIR "${MSVC_DIR}")

set(TARGET_MSVC_PATH "${T___MSVC_DIR}")

set(T___PUSHD_CMD "pushd ${TARGET_MSVC_PATH}")
string(SUBSTRING ${TARGET_MSVC_PATH} 0 2 T___DRIVE_CMD)

# TODO: Figure out why we need to popd twice before going back into src
# Create project entry
ExternalProject_Add(${PKG_DISPLAY}
	USES_TERMINAL_BUILD 1
	DOWNLOAD_NAME ${PKG_DL_FILE}
	URL ${PKG_DL_URI}
	PREFIX ${PACKAGE_DIR}
	CONFIGURE_COMMAND ""
	INSTALL_COMMAND ""
	BUILD_COMMAND
		cmd.exe /c "${T___DRIVE_CMD}\
			& ${T___PUSHD_CMD}\
			& pushd Common7\\Tools\
			& VsDevCmd.bat\
			& popd\
			& pushd VC\
			& vcvarsall.bat amd64\
			& popd\
			& popd\
			& pushd src\
			& msvcbuild.bat static"
	BUILD_IN_SOURCE 1
	BUILD_BYPRODUCTS
		${PKG_SOURCE_DIR}/src/lua51.lib
)
