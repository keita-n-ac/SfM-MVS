~/3d/OpenSfM/bin/opensfm_run_all .
~/3d/OpenSfM/bin/opensfm export_openmvs .
~/3d/openMVS/openMVS_build/bin/DensifyPointCloud ./undistorted/openmvs/scene.mvs
~/3d/openMVS/openMVS_build/bin/ReconstructMesh ./undistorted/openmvs/scene_dense.mvs
~/3d/openMVS/openMVS_build/bin/TextureMesh ./undistorted/openmvs/scene_dense_mesh.mvs

