-- This file should only have the ZVox.AddonAPI.NewAddon call
-- Why is it not on addon_init.lua?
--  | The main reason is because of addon dependencies, if it was in addon_init.lua we couldn't do proper
--  | dep checks since it would load the whole addon

ZVox.AddonAPI.NewAddon({
	["name"] = "my_first_lib", -- for namespace
	["version"] = "1.0.0", -- semver or whatever you want, just don't go back, ideally increase this each ws upload of your addon

	["author"] = "Lokachop",
	["license"] = "MIT",

	--["requires"] = {"my_first_invented"},

	-- user facing shit
	["fancyName"] = "My First Library",
	["description"] = "This addon is an example of a library that is required by other mods!",
})