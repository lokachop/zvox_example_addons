local ADDON = ZVox.AddonAPI.GetCurrentAddon()

local LIB = ZVox.AddonAPI.GetAddonByName("my_first_lib") -- this should never be nil if you set your dependencies right
-- since your addon will straight up not load if its missing any dependency


-- interfacing with the lib
-- global table method (bad)
ZVox.AddonAPI.PrintInfo("---Global table method!---")
ZVox.AddonAPI.PrintInfo("The drink that i got was " .. MyFirstZVoxLibraryAPI.GetMeADrinkBartender())

-- addon table method (good)
ZVox.AddonAPI.PrintInfo("---Addon table method!---")
ZVox.AddonAPI.PrintInfo("The drink that i got was " .. LIB.GetMeADrinkBartender())