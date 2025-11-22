-- This file should only have the ZVox.AddonAPI.NewAddon call
-- Why is it not on addon_init.lua?
--  | The main reason is because of addon dependencies, if it was in addon_init.lua we couldn't do proper
--  | dep checks since it would load the whole addon

ZVox.AddonAPI.NewAddon({
	["name"] = "my_first_require", -- for namespace
	["version"] = "1.0.0", -- semver or whatever you want, just don't go back, ideally increase this each ws upload of your addon

	["author"] = "Lokachop",
	["license"] = "MIT",

	-- requires flat table of what it requires
	["requires"] = {"my_first_lib"},

	-- user facing shit
	["fancyName"] = "My First Require",
	["description"] = "This addon is an example of using a library, and properly requiring it!",
})