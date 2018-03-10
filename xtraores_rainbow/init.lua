minetest.register_craft({
	output = 'xtraores_rainbow:glass 8',
	recipe = {
		{'xtraores:rainbow', 'default:glass'},
		{'xtraores:rainbow', 'default:glass'},
	}
})

minetest.register_node("xtraores_rainbow:glass", {
	description = "Rainbow Glass",
	drawtype = "glasslike",
	tiles = {"xtraores_window.png"},
	paramtype = "light",
	use_texture_alpha = true,
	sunlight_propagates = true,
	is_ground_content = false,
	light_source = default.LIGHT_MAX,
	groups = {cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("xtraores_rainbow:wood", {
	description = "Rainbow Planks",
	tiles = {"xtraores_wood.png"},
	light_source = default.LIGHT_MAX - 1,
	is_ground_content = true,
	groups = {choppy=3, oddly_breakable_by_hand=2},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = 'xtraores_rainbow:wood 3',
	recipe = {
		{'xtraores:rainbow'},
		{'default:wood'},
		{'default:wood'},
	}
})