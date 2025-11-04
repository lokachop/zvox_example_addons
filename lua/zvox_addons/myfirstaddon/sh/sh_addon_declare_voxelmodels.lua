local ADDON = ZVox.AddonAPI.GetCurrentAddon()

ZVox.AddonAPI.AddAddonHook(ADDON, "DeclareVoxelModels", function()
	ZVox.AddonAPI.NewVoxelModel("evil_model_two_the_return_of_evil",[[
{
	"credit": "Made with Blockbench",
	"elements": [
		{
			"from": [0, 0, 0],
			"to": [2, 16, 2],
			"color": 4,
			"faces": {
				"north": {"uv": [0, 0, 2, 16], "texture": "#missing"},
				"east": {"uv": [0, 0, 2, 16], "texture": "#missing"},
				"south": {"uv": [0, 0, 2, 16], "texture": "#missing"},
				"west": {"uv": [0, 0, 2, 16], "texture": "#missing"},
				"up": {"uv": [0, 0, 2, 2], "texture": "#missing"},
				"down": {"uv": [0, 0, 2, 2], "texture": "#missing"}
			}
		},
		{
			"from": [5, 0, 0],
			"to": [7, 16, 2],
			"rotation": {"angle": 0, "axis": "y", "origin": [5, 0, 0]},
			"color": 4,
			"faces": {
				"north": {"uv": [0, 0, 2, 16], "texture": "#missing"},
				"east": {"uv": [0, 0, 2, 16], "texture": "#missing"},
				"south": {"uv": [0, 0, 2, 16], "texture": "#missing"},
				"west": {"uv": [0, 0, 2, 16], "texture": "#missing"},
				"up": {"uv": [0, 0, 2, 2], "texture": "#missing"},
				"down": {"uv": [0, 0, 2, 2], "texture": "#missing"}
			}
		},
		{
			"from": [9, 0, 0],
			"to": [16, 2, 2],
			"rotation": {"angle": 0, "axis": "y", "origin": [12, 0, 0]},
			"color": 4,
			"faces": {
				"north": {"uv": [0, 0, 7, 2], "texture": "#missing"},
				"east": {"uv": [0, 0, 2, 2], "texture": "#missing"},
				"south": {"uv": [0, 0, 7, 2], "texture": "#missing"},
				"west": {"uv": [0, 0, 2, 2], "texture": "#missing"},
				"up": {"uv": [0, 0, 7, 2], "texture": "#missing"},
				"down": {"uv": [0, 0, 7, 2], "texture": "#missing"}
			}
		},
		{
			"from": [2, 0, 10],
			"to": [14, 2, 12],
			"rotation": {"angle": 0, "axis": "y", "origin": [8, 0, 10]},
			"color": 4,
			"faces": {
				"north": {"uv": [0, 0, 12, 2], "texture": "#missing"},
				"east": {"uv": [0, 0, 2, 2], "texture": "#missing"},
				"south": {"uv": [0, 0, 12, 2], "texture": "#missing"},
				"west": {"uv": [0, 0, 2, 2], "texture": "#missing"},
				"up": {"uv": [0, 0, 12, 2], "texture": "#missing"},
				"down": {"uv": [0, 0, 12, 2], "texture": "#missing"}
			}
		},
		{
			"from": [12, 2, 10],
			"to": [14, 4, 12],
			"rotation": {"angle": 0, "axis": "y", "origin": [8, 2, 10]},
			"color": 4,
			"faces": {
				"north": {"uv": [0, 0, 2, 2], "texture": "#missing"},
				"east": {"uv": [0, 0, 2, 2], "texture": "#missing"},
				"south": {"uv": [0, 0, 2, 2], "texture": "#missing"},
				"west": {"uv": [0, 0, 2, 2], "texture": "#missing"},
				"up": {"uv": [0, 0, 2, 2], "texture": "#missing"},
				"down": {"uv": [0, 0, 2, 2], "texture": "#missing"}
			}
		},
		{
			"from": [2, 2, 10],
			"to": [4, 4, 12],
			"rotation": {"angle": 0, "axis": "y", "origin": [-1, 2, 10]},
			"color": 4,
			"faces": {
				"north": {"uv": [0, 0, 2, 2], "texture": "#missing"},
				"east": {"uv": [0, 0, 2, 2], "texture": "#missing"},
				"south": {"uv": [0, 0, 2, 2], "texture": "#missing"},
				"west": {"uv": [0, 0, 2, 2], "texture": "#missing"},
				"up": {"uv": [0, 0, 2, 2], "texture": "#missing"},
				"down": {"uv": [0, 0, 2, 2], "texture": "#missing"}
			}
		},
		{
			"from": [5, 7, 10],
			"to": [7, 12, 12],
			"rotation": {"angle": 0, "axis": "y", "origin": [2, 7, 10]},
			"color": 4,
			"faces": {
				"north": {"uv": [0, 0, 2, 5], "texture": "#missing"},
				"east": {"uv": [0, 0, 2, 5], "texture": "#missing"},
				"south": {"uv": [0, 0, 2, 5], "texture": "#missing"},
				"west": {"uv": [0, 0, 2, 5], "texture": "#missing"},
				"up": {"uv": [0, 0, 2, 2], "texture": "#missing"},
				"down": {"uv": [0, 0, 2, 2], "texture": "#missing"}
			}
		},
		{
			"from": [9, 7, 10],
			"to": [11, 12, 12],
			"rotation": {"angle": 0, "axis": "y", "origin": [5, 7, 10]},
			"color": 4,
			"faces": {
				"north": {"uv": [0, 0, 2, 5], "texture": "#missing"},
				"east": {"uv": [0, 0, 2, 5], "texture": "#missing"},
				"south": {"uv": [0, 0, 2, 5], "texture": "#missing"},
				"west": {"uv": [0, 0, 2, 5], "texture": "#missing"},
				"up": {"uv": [0, 0, 2, 2], "texture": "#missing"},
				"down": {"uv": [0, 0, 2, 2], "texture": "#missing"}
			}
		},
		{
			"from": [9, 14, 0],
			"to": [16, 16, 2],
			"rotation": {"angle": 0, "axis": "y", "origin": [12, 14, 0]},
			"color": 4,
			"faces": {
				"north": {"uv": [0, 0, 7, 2], "texture": "#missing"},
				"east": {"uv": [0, 0, 2, 2], "texture": "#missing"},
				"south": {"uv": [0, 0, 7, 2], "texture": "#missing"},
				"west": {"uv": [0, 0, 2, 2], "texture": "#missing"},
				"up": {"uv": [0, 0, 7, 2], "texture": "#missing"},
				"down": {"uv": [0, 0, 7, 2], "texture": "#missing"}
			}
		},
		{
			"from": [11, 2, 0],
			"to": [14, 14, 2],
			"rotation": {"angle": 0, "axis": "y", "origin": [12, 2, 0]},
			"color": 4,
			"faces": {
				"north": {"uv": [0, 0, 3, 12], "texture": "#missing"},
				"east": {"uv": [0, 0, 2, 12], "texture": "#missing"},
				"south": {"uv": [0, 0, 3, 12], "texture": "#missing"},
				"west": {"uv": [0, 0, 2, 12], "texture": "#missing"},
				"up": {"uv": [0, 0, 3, 2], "texture": "#missing"},
				"down": {"uv": [0, 0, 3, 2], "texture": "#missing"}
			}
		},
		{
			"from": [2, 7, 0],
			"to": [5, 9, 2],
			"rotation": {"angle": 0, "axis": "y", "origin": [2, 7, 0]},
			"color": 3,
			"faces": {
				"north": {"uv": [0, 0, 3, 2], "texture": "#missing"},
				"east": {"uv": [0, 0, 2, 2], "texture": "#missing"},
				"south": {"uv": [0, 0, 3, 2], "texture": "#missing"},
				"west": {"uv": [0, 0, 2, 2], "texture": "#missing"},
				"up": {"uv": [0, 0, 3, 2], "texture": "#missing"},
				"down": {"uv": [0, 0, 3, 2], "texture": "#missing"}
			}
		}
	]
}
	]])
end)