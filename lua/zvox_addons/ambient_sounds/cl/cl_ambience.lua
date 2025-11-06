local ADDON = ZVox.AddonAPI.GetCurrentAddon()

local soundPaths = {
	"zvox_addons/ambient_sounds/ambi1.ogg",
	"zvox_addons/ambient_sounds/ambi2.ogg",
	"zvox_addons/ambient_sounds/ambi3.ogg",
	"zvox_addons/ambient_sounds/ambi4.ogg",
	"zvox_addons/ambient_sounds/ambi5.ogg",
	"zvox_addons/ambient_sounds/ambi6.ogg",
	"zvox_addons/ambient_sounds/ambi7.ogg",
	"zvox_addons/ambient_sounds/ambi8.ogg",
	"zvox_addons/ambient_sounds/ambi9.ogg",
	"zvox_addons/ambient_sounds/ambi10.ogg",
}


ZVox.AddonAPI.PrintInfo("Hello from cl_ambience, TODO: finish ts")


local function playRandomSoundAtPos(pos)
	local soundGet = soundPaths[math.random(1, #soundPaths)]

	ZVox.AddonAPI.PlaySound(soundGet, pos, 95, 100 + (((math.random() - .5) * 2) * 25), 1, 0)
end


local attFindAir = 64
local radFindAir = 8
local function getRandomAirNearPlayer(univ)
	local pX, pY, pZ = ZVox.AddonAPI.GetPlayerPosUnpacked()
	pX = math.floor(pX)
	pY = math.floor(pY)
	pZ = math.floor(pZ)

	local xC, yC, zC
	for i = 1, attFindAir do
		xC = pX + math.random(-radFindAir, radFindAir)
		yC = pY + math.random(-radFindAir, radFindAir)
		zC = pZ + math.random(-radFindAir, radFindAir)

		local cont = ZVox.AddonAPI.GetBlockAtPos(univ, xC, yC, zC)

		if cont == 0 then
			return xC, yC, zC
		end
	end

	return
end

local vecSnd = Vector(0, 0, 0)
local function doAmbientSound(univ)
	local x, y, z = getRandomAirNearPlayer(univ)

	if not x then
		return -- awww no air
	end

	vecSnd:SetUnpacked(x, y, z)
	playRandomSoundAtPos(vecSnd)
end



local itrCheck = 16
local checkRad = 4
local function getDensityAroundPlayer(univ)
	local pX, pY, pZ = ZVox.AddonAPI.GetPlayerPosUnpacked()
	pX = math.floor(pX)
	pY = math.floor(pY)
	pZ = math.floor(pZ)

	local density = 0

	local xC, yC, zC
	for i = 1, itrCheck do
		xC = pX + math.random(-checkRad, checkRad)
		yC = pY + math.random(-checkRad, checkRad)
		zC = pZ + math.random(0, checkRad * 2)

		local cont = ZVox.AddonAPI.GetBlockAtPos(univ, xC, yC, zC)

		if cont ~= 0 then
			density = density + 1
		end
	end

	density = density / itrCheck

	return density
end

local timePerSound = 60 * 2 -- 2 mins at full density!
local playerMood = 0 -- play a sound when reaches one
local function onDensityUpdate(univ, density)
	playerMood = playerMood + density

	if playerMood > timePerSound then
		doAmbientSound(univ)
		playerMood = 0
	end
end




local lastCheck = CurTime()
local nextCheck = CurTime()
ZVox.AddonAPI.AddAddonHook(ADDON, "Think", function(univ)
	if nextCheck > CurTime() then
		return
	end

	local delta = CurTime() - lastCheck
	local dense = getDensityAroundPlayer(univ)
	if dense ~= 0 then
		onDensityUpdate(univ, dense * delta)
	end



	lastCheck = CurTime()
	nextCheck = CurTime() + .1 + (math.random() * .1)
end)