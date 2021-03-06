set(${PKG_SIMPLE_NAME}_INCLUDE_DIRS ${PKG_INSTALL_DIR}/include)
set(${PKG_SIMPLE_NAME}_LIBRARIES ${PKG_INSTALL_DIR}/lib/libassimp.a)

# Create project entry
ExternalProject_Add(${PKG_DISPLAY}
	DOWNLOAD_NAME ${PKG_DL_FILE}
	URL ${PKG_DL_URI}
	PREFIX ${PACKAGE_DIR}
	CMAKE_ARGS
		-DCMAKE_INSTALL_PREFIX=${PKG_INSTALL_DIR}
		-DBUILD_SHARED_LIBS=OFF
		-DASSIMP_NO_EXPORT=ON
		-DASSIMP_BUILD_ASSIMP_TOOLS=OFF
		-DASSIMP_BUILD_TESTS=OFF

		-DASSIMP_BUILD_OBJ_IMPORTER=ON
		-DASSIMP_BUILD_X_IMPORTER=ON

		-DASSIMP_BUILD_3DS_IMPORTER=OFF
		-DASSIMP_BUILD_AC_IMPORTER=OFF
		-DASSIMP_BUILD_ASE_IMPORTER=OFF
		-DASSIMP_BUILD_ASSBIN_IMPORTER=OFF
		-DASSIMP_BUILD_ASSXML_IMPORTER=OFF
		-DASSIMP_BUILD_B3D_IMPORTER=OFF
		-DASSIMP_BUILD_BVH_IMPORTER=OFF
		-DASSIMP_BUILD_COLLADA_IMPORTER=OFF
		-DASSIMP_BUILD_DXF_IMPORTER=OFF
		-DASSIMP_BUILD_CSM_IMPORTER=OFF
		-DASSIMP_BUILD_HMP_IMPORTER=OFF
		-DASSIMP_BUILD_IRRMESH_IMPORTER=OFF
		-DASSIMP_BUILD_IRR_IMPORTER=OFF
		-DASSIMP_BUILD_LWO_IMPORTER=OFF
		-DASSIMP_BUILD_LWS_IMPORTER=OFF
		-DASSIMP_BUILD_MD2_IMPORTER=OFF
		-DASSIMP_BUILD_MD3_IMPORTER=OFF
		-DASSIMP_BUILD_MD5_IMPORTER=OFF
		-DASSIMP_BUILD_MDC_IMPORTER=OFF
		-DASSIMP_BUILD_MDL_IMPORTER=OFF
		-DASSIMP_BUILD_NFF_IMPORTER=OFF
		-DASSIMP_BUILD_NDO_IMPORTER=OFF
		-DASSIMP_BUILD_OFF_IMPORTER=OFF
		-DASSIMP_BUILD_OGRE_IMPORTER=OFF
		-DASSIMP_BUILD_OPENGEX_IMPORTER=OFF
		-DASSIMP_BUILD_PLY_IMPORTER=OFF
		-DASSIMP_BUILD_MS3D_IMPORTER=OFF
		-DASSIMP_BUILD_COB_IMPORTER=OFF
		-DASSIMP_BUILD_BLEND_IMPORTER=OFF
		-DASSIMP_BUILD_IFC_IMPORTER=OFF
		-DASSIMP_BUILD_XGL_IMPORTER=OFF
		-DASSIMP_BUILD_FBX_IMPORTER=OFF
		-DASSIMP_BUILD_Q3D_IMPORTER=OFF
		-DASSIMP_BUILD_Q3BSP_IMPORTER=OFF
		-DASSIMP_BUILD_RAW_IMPORTER=OFF
		-DASSIMP_BUILD_SIB_IMPORTER=OFF
		-DASSIMP_BUILD_SMD_IMPORTER=OFF
		-DASSIMP_BUILD_STL_IMPORTER=OFF
		-DASSIMP_BUILD_TERRAGEN_IMPORTER=OFF
		-DASSIMP_BUILD_3D_IMPORTER=OFF
		-DASSIMP_BUILD_GLTF_IMPORTER=OFF
		-DASSIMP_BUILD_3MF_IMPORTER=OFF

	BUILD_BYPRODUCTS ${PKG_SIMPLE_NAME}_LIBRARIES
)
