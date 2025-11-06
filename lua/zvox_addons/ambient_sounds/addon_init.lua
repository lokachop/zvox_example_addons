if not ZVox then
	print("This is a ZVox addon, ZVox isn't loaded!")
	return
end
local ADDON = ZVox.AddonAPI.NewAddon({
	["name"] = "ambient_sounds", -- for namespace
	["version"] = "1.0.0", -- semver or whatever you want, just don't go back, ideally increase this each ws upload of your addon

	["author"] = "Lokachop",
	["license"] = "MIT",

	-- user facing shit
	["fancyName"] = "Ambient Sounds",
	["description"] = "Adds ambient sounds, credit to SS13!",
})

ZVox.AddonAPI.PrintInfo("Ambientsounds Loading!")

ZVox.AddonAPI.IncludeFileClient("cl/cl_ambience.lua")