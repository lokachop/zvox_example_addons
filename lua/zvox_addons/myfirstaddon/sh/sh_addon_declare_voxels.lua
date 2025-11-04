local ADDON = ZVox.AddonAPI.GetCurrentAddon()

ZVox.AddonAPI.AddAddonHook(ADDON, "DeclareVoxels", function()
	-- you would declare your voxels inside of here
	-- you can't have multiple of these DeclareVoxel hooks

	ZVox.AddonAPI.NewVoxel({
		["name"] = "my_voxel",
		["visible"] = true,
		["solid"] = true,
		["multitex"] = {
			[ZVOX_TEX_X_PLUS ] = "zvox:xor", -- +X
			[ZVOX_TEX_X_MINUS] = "zvox:xor", -- -X
			[ZVOX_TEX_Y_PLUS ] = "zvox:xor", -- +Y
			[ZVOX_TEX_Y_MINUS] = "zvox:xor", -- -Y
			[ZVOX_TEX_Z_PLUS ] = "zvox:xor", -- +Z
			[ZVOX_TEX_Z_MINUS] = "zvox:xor", -- -Z
		},
		["tex"] = "zvox:xor",
		["voxelgroup"] = ZVOX_VOXELGROUP_SOLID,
		["sound"] = ZVOX_MAT_METAL,
		["voxelmodel"] = "zvox:cube_dir",
	})

	ZVox.AddonAPI.NewVoxel({
		["name"] = "scary_voxel",
		["visible"] = true,
		["solid"] = true,
		["opaque"] = false,
		["tex"] = "zvox:voidinium_wool",
		["voxelgroup"] = ZVOX_VOXELGROUP_SOLID,
		["sound"] = ZVOX_MAT_CLOTH,
		["voxelmodel"] = "myfirstaddon:evil_model_two_the_return_of_evil",
	})
end)