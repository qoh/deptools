set(${PKG_SIMPLE_NAME}_INCLUDE_DIRS ${PKG_INSTALL_DIR}/include)
set(${PKG_SIMPLE_NAME}_LIBRARIES ${PKG_INSTALL_DIR}/lib/glew_s.lib)

# Create project entry
ExternalProject_Add(${PKG_DISPLAY}
	DOWNLOAD_NAME ${PKG_DL_FILE}
	URL ${PKG_DL_URI}
	PREFIX ${PACKAGE_DIR}
	CONFIGURE_COMMAND cmake -G "${CMAKE_GENERATOR}" ./build/cmake
		-DCMAKE_INSTALL_PREFIX=${PKG_INSTALL_DIR}
		-DBUILD_UTILS=OFF
	BUILD_BYPRODUCTS
		${PKG_INSTALL_DIR}/lib/glew_s.lib
)
