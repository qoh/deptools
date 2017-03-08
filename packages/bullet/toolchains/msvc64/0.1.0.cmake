set(${PKG_SIMPLE_NAME}_INCLUDE_DIRS ${PKG_INSTALL_DIR}/include)
set(${PKG_SIMPLE_NAME}_LIBRARIES
	${PKG_INSTALL_DIR}/lib/Bullet3Common.lib
	${PKG_INSTALL_DIR}/lib/Bullet2FileLoader.lib
	${PKG_INSTALL_DIR}/lib/Bullet3Collision.lib
	${PKG_INSTALL_DIR}/lib/Bullet3Dynamics.lib
	${PKG_INSTALL_DIR}/lib/Bullet3InverseDynamics.lib
	${PKG_INSTALL_DIR}/lib/LinearMath.lib
	${PKG_INSTALL_DIR}/lib/Bullet3Geometry.lib
	${PKG_INSTALL_DIR}/lib/BulletDynamics.lib
	${PKG_INSTALL_DIR}/lib/BulletCollision.lib
	${PKG_INSTALL_DIR}/lib/Bullet3OpenCL_clew.lib
	${PKG_INSTALL_DIR}/lib/BulletSoftBody.lib
)

# Create project entry
ExternalProject_Add(${PKG_DISPLAY}
	DOWNLOAD_NAME ${PKG_DL_FILE}
	URL ${PKG_DL_URI}
	PREFIX ${PACKAGE_DIR}
	CMAKE_ARGS
		-DCMAKE_INSTALL_PREFIX=${PKG_INSTALL_DIR}
		-DUSE_GRAPHICAL_BENCHMARK=OFF
		-DBUILD_CPU_DEMOS=OFF
		-DBUILD_BULLET2_DEMOS=OFF
		-DBUILD_UNIT_TESTS=OFF
		-DBUILD_EXTRAS=OFF
		-DUSE_GLUT=OFF
	BUILD_BYPRODUCTS ${PKG_SIMPLE_NAME}_LIBRARIES
)
