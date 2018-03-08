minetest.register_craft({
	output = 'xtraores_door:door_rainbow',
	recipe = {
		{'xtraores_rainbow:wood', 'default:glass'},
		{'xtraores_rainbow:wood', 'default:glass'},
		{'xtraores_rainbow:wood', 'xtraores_rainbow:wood'},

	}
})
doors.register_door("xtraores_door:door_rainbow", {
	description = "rainbow Door",
	inventory_image = "xtraores_door.png",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=2,door=1},
	tiles_bottom = {"xtraores_door_b.png", "xtraores_doorside.png"},
	tiles_top = {"xtraores_door_a.png", "xtraores_doorsideup.png"},
	sounds = default.node_sound_wood_defaults(),
	sunlight = false,
}) 
