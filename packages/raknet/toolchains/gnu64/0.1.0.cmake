set(${PKG_SIMPLE_NAME}_INCLUDE_DIRS ${PKG_SOURCE_DIR}/include)
set(${PKG_SIMPLE_NAME}_LIBRARIES ${PKG_SOURCE_DIR}/Lib/LibStatic/libRakNetLibStatic.a)

# Create project entry
ExternalProject_Add(${PKG_DISPLAY}
	DOWNLOAD_NAME ${PKG_DL_FILE}
	URL ${PKG_DL_URI}
	PREFIX ${PACKAGE_DIR}
	CMAKE_ARGS
		-DCMAKE_INSTALL_PREFIX=${PKG_INSTALL_DIR}
		-DRAKNET_ENABLE_SAMPLES=OFF
		-DRAKNET_ENABLE_DLL=OFF
	BUILD_IN_SOURCE 1
	BUILD_BYPRODUCTS
		${PKG_SOURCE_DIR}/Lib/LibStatic/libRakNetLibStatic.a
)