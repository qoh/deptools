set(${PKG_SIMPLE_NAME}_INCLUDE_DIRS ${PKG_SOURCE_DIR}/include)
set(${PKG_SIMPLE_NAME}_LIBRARIES ${PKG_SOURCE_DIR}/lib/Release/libglew32.lib)

# Create project entry
ExternalProject_Add(${PKG_DISPLAY}
	DOWNLOAD_NAME ${PKG_DL_FILE}
	URL ${PKG_DL_URI}
	PREFIX ${PACKAGE_DIR}
	CONFIGURE_COMMAND cmake -G "${CMAKE_GENERATOR}" ./build/cmake
		-DBUILD_UTILS=OFF
	BUILD_COMMAND cmake --build . --target glew_s --config Release
	BUILD_IN_SOURCE 1
	INSTALL_COMMAND ""
	BUILD_BYPRODUCTS
		${PKG_SOURCE_DIR}/lib/Release/libglew32.lib
)
