colmap feature_extractor --database_path database.db --image_path ./images
colmap exhaustive_matcher --database_path database.db
mkdir sparse
mkdir dense
colmap mapper --database_path database.db --image_path ./images --output_path ./sparse
colmap image_undistorter --image_path ./images --input_path ./sparse/0 --output_path ./dense
~/3d/openMVS/openMVS_build/bin/InterfaceCOLMAP -i ./dense -o scene.mvs
~/3d/openMVS/openMVS_build/bin/DensifyPointCloud ./scene.mvs
~/3d/openMVS/openMVS_build/bin/ReconstructMesh ./scene_dense.mvs
~/3d/openMVS/openMVS_build/bin/TextureMesh ./scene_dense_mesh.mvs
