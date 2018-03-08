minetest.register_craft({
	output = 'xtraores_rainbow:glass 8',
	recipe = {
		{'xtraores:rainbow', 'default:glass'},
		{'xtraores:rainbow', 'default:glass'},
	}
})

minetest.register_node("xtraores_rainbow:glass", {
	description = "rainbow glass",
	drawtype = "liquid",
	tiles = {"xtraores_window.png"},
	inventory_image = minetest.inventorycube("xtraores_window.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	light_source = default.LIGHT_MAX - 0,
	alpha = 160,
	groups = {cracky=3,oddly_breakable_by_hand=3, slippery=20},
	sounds = default.node_sound_glass_defaults(),
})
minetest.register_node("xtraores_rainbow:wood", {
	description = "rainbow planks",
	tiles = {"xtraores_wood.png"},
	light_source = default.LIGHT_MAX - 1,
	is_ground_content = true,
	groups = {choppy=3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = 'xtraores_rainbow:wood 3',
	recipe = {
		{'xtraores:rainbow'},
		{'default:wood'},
		{'default:wood'},
	}
})