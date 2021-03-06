set(${PKG_SIMPLE_NAME}_INCLUDE_DIRS ${PKG_INSTALL_DIR}/include)
set(${PKG_SIMPLE_NAME}_LIBRARIES ${PKG_INSTALL_DIR}/lib/libz.a)

# Create project entry
ExternalProject_Add(${PKG_DISPLAY}
	DOWNLOAD_NAME ${PKG_DL_FILE}
	URL ${PKG_DL_URI}
	PREFIX ${PACKAGE_DIR}
	CMAKE_ARGS
		-DCMAKE_INSTALL_PREFIX=${PKG_INSTALL_DIR}
	BUILD_BYPRODUCTS ${PKG_SIMPLE_NAME}_LIBRARIES
)
