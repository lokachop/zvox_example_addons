local ADDON = ZVox.AddonAPI.GetCurrentAddon()

ZVox.AddonAPI.AddAddonHook(ADDON, "DeclareVoxels", function()
	-- you would declare your voxels inside of here
	-- you can't have multiple of these DeclareVoxel hooks

	ZVox.AddonAPI.NewVoxel({
		["name"] = "my_voxel",
		["visible"] = true,
		["solid"] = true,
		["tex"] = ZVox.AddonAPI.NamespaceConvert("my_animated_texture"),
		["voxelgroup"] = ZVOX_VOXELGROUP_SOLID,
		["sound"] = ZVOX_MAT_METAL,
		["voxelmodel"] = "zvox:cube_dir",
		["emmissive"] = 15,
	})

	ZVox.AddonAPI.NewVoxel({
		["name"] = "scary_voxel",
		["visible"] = true,
		["solid"] = true,
		["opaque"] = false,
		["tex"] = ZVox.AddonAPI.NamespaceConvert("my_texture"), -- ZVox.AddonAPI.NamespaceConvert will add our namespace to the string
		["voxelgroup"] = ZVOX_VOXELGROUP_SOLID,
		["sound"] = ZVOX_MAT_CLOTH,
		["voxelmodel"] = ZVox.AddonAPI.NamespaceConvert("evil_model_two_the_return_of_evil"),
	})
end)