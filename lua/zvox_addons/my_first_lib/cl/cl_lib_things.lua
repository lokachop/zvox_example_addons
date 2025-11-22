local ADDON = ZVox.AddonAPI.GetCurrentAddon()

-- you can either expose APIs to other addons via global tables (bad) or put your methods inside the ADDON table
local drinks = {
	"whiskey",
	"tequila",
	"rum",
	"vodka",
	"beer",
}

-- global table method (bad)
MyFirstZVoxLibraryAPI = MyFirstZVoxLibraryAPI or {}
function MyFirstZVoxLibraryAPI.GetMeADrinkBartender()
	-- get a random drink from the table
	return drinks[math.random(1, #drinks)]
end

-- ADDON table method (good)
function ADDON.GetMeADrinkBartender()
	-- get a random drink from the table
	return drinks[math.random(1, #drinks)]
end