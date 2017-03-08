set(${PKG_SIMPLE_NAME}_INCLUDE_DIRS ${PKG_INSTALL_DIR}/include)
set(${PKG_SIMPLE_NAME}_LIBRARIES
	${PKG_INSTALL_DIR}/lib/libBullet3Common.a
	${PKG_INSTALL_DIR}/lib/libBullet2FileLoader.a
	${PKG_INSTALL_DIR}/lib/libBullet3Collision.a
	${PKG_INSTALL_DIR}/lib/libBullet3Dynamics.a
	${PKG_INSTALL_DIR}/lib/libBulletInverseDynamics.a
	${PKG_INSTALL_DIR}/lib/libLinearMath.a
	${PKG_INSTALL_DIR}/lib/libBullet3Geometry.a
	${PKG_INSTALL_DIR}/lib/libBulletDynamics.a
	${PKG_INSTALL_DIR}/lib/libBulletCollision.a
	${PKG_INSTALL_DIR}/lib/libBullet3OpenCL_clew.a
	${PKG_INSTALL_DIR}/lib/libBulletSoftBody.a
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
