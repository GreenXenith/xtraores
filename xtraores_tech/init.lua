minetest.register_node("xtraores_tech:xray", {
	description = "x-ray glass(lets you see trough blocks!)",
	tiles = {"xtraores_xray.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xtraores_tech:xray',
	recipe = {
		{'xtraores:geminitinum_bar', 'xtraores_misc:microchip', 'xtraores:geminitinum_bar'},
		{'xtraores_misc:microchip', 'default:glass', 'xtraores_misc:microchip'},
		{'xtraores:geminitinum_bar', 'xtraores_misc:microchip', 'xtraores:geminitinum_bar'},

	}
})

minetest.register_craft({
	output = 'xtraores_tech:ropegen',
	recipe = {
		{'xtraores:osminum_bar', 'farming:cotton', 'xtraores:osminum_bar'},
		{'xtraores_misc:simple_microchip', 'farming:cotton', 'xtraores_misc:simple_microchip'},
		{'xtraores:osminum_bar', 'farming:cotton', 'xtraores:osminum_bar'},

	}
})
minetest.register_abm({
	nodenames = {"xtraores_tech:ropegen"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y-1
		if minetest.get_node(pos).name == "air" then
			node.name = "xtraores_tech:rope"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xtraores_tech:rope"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y-1
		if minetest.get_node(pos).name == "air" then
			node.name = "xtraores_tech:rope"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"air"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		pos.y = pos.y-1
		if minetest.get_node(pos).name == "xtraores_tech:rope" then
			node.name = "air"
			minetest.set_node(pos, node)
		end
	end
})

minetest.register_node("xtraores_tech:ropegen", {
	description = "rope generator(generates ropes under it!)",
	tiles = {"xtraores_ropegen_top.png", "xtraores_ropegen_bottom.png", "xtraores_ropegen_side.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("xtraores_tech:lonely_rope", {
	description = "rope",
	walkable = false,
	drawtype = "nodebox",
			node_box = {
				type = "fixed",
				fixed = {       
{ -0.125, -0.50, -0.125, 0.125, 0.5, 0.125, },			
				},
			},
	tiles = {"xtraores_rope.png"},
	paramtype = "light",
	climbable = true,
	sunlight_propagates = true,
	stack_max = 10000,
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("xtraores_tech:rope", {
	walkable = false,
	drawtype = "nodebox",
			node_box = {
				type = "fixed",
				fixed = {       
{ -0.125, -0.50, -0.125, 0.125, 0.5, 0.125, },			
				},
			},
	tiles = {"xtraores_rope.png"},
	paramtype = "light",
	climbable = true,
	sunlight_propagates = true,
	drop = 'xtraores:lonely_rope',
	stack_max = 10000,
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})
