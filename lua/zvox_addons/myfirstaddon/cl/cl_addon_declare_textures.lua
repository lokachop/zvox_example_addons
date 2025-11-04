local ADDON = ZVox.AddonAPI.GetCurrentAddon()

ZVox.AddonAPI.AddAddonHook(ADDON, "DeclareTextures", function()
	ZVox.AddonAPI.NewTexture("my_texture", function()
		render.Clear(255, 0, 0)
	end)

	ZVox.AddonAPI.TextureOpPixelFunc("my_texture", function(x, y)
		return x * 16, y * 16, 255
	end)

	ZVox.AddonAPI.NewTexturePixelFunc("my_texture_two", function(x, y)
		return 0, x * 16, y * 16
	end)
end)