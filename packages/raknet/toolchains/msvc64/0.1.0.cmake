set(${PKG_SIMPLE_NAME}_INCLUDE_DIRS ${PKG_SOURCE_DIR}/include)
set(${PKG_SIMPLE_NAME}_LIBRARIES ${PKG_SOURCE_DIR}/Lib/LibStatic/Release/RakNetLibStatic.lib)


# Create project entry
ExternalProject_Add(${PKG_DISPLAY}
	DOWNLOAD_NAME ${PKG_DL_FILE}
	URL ${PKG_DL_URI}
	PREFIX ${PACKAGE_DIR}
	CONFIGURE_COMMAND cmake -G "${CMAKE_GENERATOR}" .
		-DRAKNET_ENABLE_SAMPLES=OFF
		-DRAKNET_ENABLE_DLL=OFF
	BUILD_COMMAND cmake --build . --target RakNetLibStatic --config Release
	BUILD_IN_SOURCE 1
	INSTALL_COMMAND
		cmake -E copy_directory ${PKG_SOURCE_DIR}/Source ${PKG_SOURCE_DIR}/include/raknet
	BUILD_BYPRODUCTS
		${PKG_SOURCE_DIR}/Lib/LibStatic/Release/RakNetLibStatic.lib
)
