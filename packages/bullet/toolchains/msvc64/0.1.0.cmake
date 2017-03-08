set(${PKG_SIMPLE_NAME}_INCLUDE_DIRS ${PKG_SOURCE_DIR}/include)
set(${PKG_SIMPLE_NAME}_LIBRARIES
	${PKG_SOURCE_DIR}/lib/Release/Bullet3Common.lib
	${PKG_SOURCE_DIR}/lib/Release/Bullet2FileLoader.lib
	${PKG_SOURCE_DIR}/lib/Release/Bullet3Collision.lib
	${PKG_SOURCE_DIR}/lib/Release/Bullet3Dynamics.lib
	${PKG_SOURCE_DIR}/lib/Release/BulletInverseDynamics.lib
	${PKG_SOURCE_DIR}/lib/Release/LinearMath.lib
	${PKG_SOURCE_DIR}/lib/Release/Bullet3Geometry.lib
	${PKG_SOURCE_DIR}/lib/Release/BulletDynamics.lib
	${PKG_SOURCE_DIR}/lib/Release/BulletCollision.lib
	${PKG_SOURCE_DIR}/lib/Release/Bullet3OpenCL_clew.lib
	${PKG_SOURCE_DIR}/lib/Release/BulletSoftBody.lib
)

# Create project entry
ExternalProject_Add(${PKG_DISPLAY}
	DOWNLOAD_NAME ${PKG_DL_FILE}
	URL ${PKG_DL_URI}
	PREFIX ${PACKAGE_DIR}
	CMAKE_ARGS
		-DUSE_GRAPHICAL_BENCHMARK=OFF
		-DBUILD_CPU_DEMOS=OFF
		-DBUILD_BULLET2_DEMOS=OFF
		-DBUILD_UNIT_TESTS=OFF
		-DBUILD_EXTRAS=OFF
		-DUSE_GLUT=OFF
	BUILD_IN_SOURCE 1
	INSTALL_COMMAND
		cmake -E copy_directory ${PKG_SOURCE_DIR}/src ${PKG_SOURCE_DIR}/include/bullet
	BUILD_BYPRODUCTS ${PKG_SIMPLE_NAME}_LIBRARIES
)
