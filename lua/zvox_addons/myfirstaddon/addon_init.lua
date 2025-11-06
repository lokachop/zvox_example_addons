if not ZVox then
	print("This is a ZVox addon, ZVox isn't loaded!")
	return
end
local ADDON = ZVox.AddonAPI.NewAddon({
	["name"] = "myfirstaddon", -- for namespace
	["version"] = "1.0.0", -- semver or whatever you want, just don't go back, ideally increase this each ws upload of your addon

	["author"] = "Lokachop",
	["license"] = "MIT",

	-- user facing shit
	["fancyName"] = "My First Addon",
	["description"] = "This addon is an example addon",
})

ZVox.AddonAPI.PrintInfo("Hello from my addon!")

ZVox.AddonAPI.IncludeFileShared("sh/sh_addon_declare_voxelmodels.lua")
ZVox.AddonAPI.IncludeFileShared("sh/sh_addon_declare_voxels.lua")

ZVox.AddonAPI.IncludeFileClient("cl/cl_addon_declare_textures.lua")