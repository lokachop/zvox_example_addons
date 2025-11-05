local ADDON = ZVox.AddonAPI.GetCurrentAddon()

ZVox.AddonAPI.AddAddonHook(ADDON, "DeclareTextures", function()
	ZVox.AddonAPI.NewTexture("my_texture", function()
		render.Clear(255, 0, 0, 255)
	end)

	ZVox.AddonAPI.TextureOpPixelFunc("my_texture", function(x, y)
		return x * 16, y * 16, 255
	end)

	ZVox.AddonAPI.NewTexturePixelFunc("my_texture_two", function(x, y)
		return 0, x * 16, y * 16
	end)


	ZVox.NewTextureAnimated("my_animated_texture", {
		["frames"] = 16,
		["speed"] = 0.1,
	}, function(name, delta, frame)
		ZVox.TextureOpPixelFunc(name, function(x, y)
			--local xc = (x + (delta * 16)) % 16
			--local yc = (y + (delta * 32)) % 16

			local delta16 = delta * 16

			local xc = x - delta16
			local yc = y

			local val1 = (bit.bxor(math.floor(xc), math.floor(yc)) * 16) % 256

			local xc = x + delta16
			local yc = y
			local val2 = (bit.bxor(math.floor(xc), math.floor(yc)) * 16) % 256

			local xc = x
			local yc = y - delta16
			local val3 = (bit.bxor(math.floor(xc), math.floor(yc)) * 16) % 256


			return val1, val2, val3
		end)
	end)

	ZVox.AddonAPI.SetTextureEmissive("my_animated_texture", true)
end)