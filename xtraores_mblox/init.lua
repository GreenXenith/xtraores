minetest.register_craft({
	output = 'xtraores_mblox:redmarble_column 2',
	recipe = {
		{'xtraores:redmarble'},
		{'xtraores:redmarble'},
	}
})
minetest.register_node("xtraores_mblox:redmarble_column", {
	description = "red marble column",
	drawtype = "nodebox",
			node_box = {
				type = "fixed",
				fixed = {       
					{ -0.4, -0.50, -0.4, 0.4, 0.5, 0.4},			{ -0.5, -0.50, -0.5, 0.5, -0.3125, 0.5},
		{ -0.5, 0.3125, -0.5, 0.5, 0.5, 0.5},				
				},
			},
	tiles = {"xtraores_rct.png", "xtraores_rct.png",
		"xtraores_rcs.png", "xtraores_rcs.png",
		"xtraores_rcs.png", "xtraores_rcs.png"},
	is_ground_content = true,
	paramtype = "light",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xtraores_mblox:bluemarble_column 2',
	recipe = {
		{'xtraores:bluemarble'},
		{'xtraores:bluemarble'},
	}
})

minetest.register_node("xtraores_mblox:bluemarble_column", {
	description = "blue marble column",
	drawtype = "nodebox",
			node_box = {
				type = "fixed",
				fixed = {       
					{ -0.4, -0.50, -0.4, 0.4, 0.5, 0.4},			{ -0.5, -0.50, -0.5, 0.5, -0.3125, 0.5},
		{ -0.5, 0.3125, -0.5, 0.5, 0.5, 0.5},				
				},
			},
	tiles = {"xtraores_blct.png", "xtraores_blct.png",
		"xtraores_blcs.png", "xtraores_blcs.png",
		"xtraores_blcs.png", "xtraores_blcs.png"},
	is_ground_content = true,
	paramtype = "light",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xtraores_mblox:blackmarble_column 2',
	recipe = {
		{'xtraores:blackmarble'},
		{'xtraores:blackmarble'},
	}
})

minetest.register_node("xtraores_mblox:blackmarble_column", {
	description = "black marble column",
	drawtype = "nodebox",
			node_box = {
				type = "fixed",
				fixed = {       
					{ -0.4, -0.50, -0.4, 0.4, 0.5, 0.4},			{ -0.5, -0.50, -0.5, 0.5, -0.3125, 0.5},
		{ -0.5, 0.3125, -0.5, 0.5, 0.5, 0.5},				
				},
			},
	tiles = {"xtraores_bct.png", "xtraores_bct.png",
		"xtraores_bcs.png", "xtraores_bcs.png",
		"xtraores_bcs.png", "xtraores_bcs.png"},
	is_ground_content = true,
	paramtype = "light",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xtraores_mblox:marble_column 2',
	recipe = {
		{'xtraores:marble'},
		{'xtraores:marble'},
	}
})

minetest.register_node("xtraores_mblox:marble_column", {
	description = "white marble column",
	drawtype = "nodebox",
			node_box = {
				type = "fixed",
				fixed = {       
					{ -0.4, -0.50, -0.4, 0.4, 0.5, 0.4},			{ -0.5, -0.50, -0.5, 0.5, -0.3125, 0.5},
		{ -0.5, 0.3125, -0.5, 0.5, 0.5, 0.5},				
				},
			},
	tiles = {"xtraores_wct.png", "xtraores_wct.png",
		"xtraores_wcs.png", "xtraores_wcs.png",
		"xtraores_wcs.png", "xtraores_wcs.png"},
	is_ground_content = true,
	paramtype = "light",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("xtraores_mblox:platinumtorch", {
	description = "well stacked platinum torch",
	walkable = false,
	drawtype = "nodebox",
			node_box = {
				type = "fixed",
				fixed = {       
{ -0.0625, -0.50, -0.0625, 0.0625, 0.25, 0.0625, },			
				},
			},
	tiles = {"xpt_top.png", "xpt_top.png",
		"xpt_side.png", "xpt_side.png",
		"xpt_side.png", "xpt_side.png"},
	light_source = default.LIGHT_MAX - 0,
	stack_max = 10000,
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = 'xtraores_mblox:platinumtorch 15',
	recipe = {
		{'xtraores:antracite_lump'},
		{'xtraores:platinum_bar'},
	}
})