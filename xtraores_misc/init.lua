minetest.register_craftitem("xtraores_misc:microchip", {
	description = "hy-tech microchip(for advanced technologies)",
	inventory_image = "xtraores_microchip.png",
})
minetest.register_craftitem("xtraores_misc:simple_microchip", {
	description = "simple microchip(for simple technologies)",
	inventory_image = "xtraores_simple_microchip.png",
})
minetest.register_craft({
	output = 'xtraores_misc:simple_microchip',
	recipe = {
		{'default:copper_ingot', 'xtraores:cobalt_bar', 'xtraores:adamantite_bar'},
		{'xtraores:cobalt_bar', 'xtraores:cobalt_bar', 'xtraores:osminum_bar'},
		{'', 'xtraores:cobalt_bar', 'xtraores:cobalt_bar'},

	}
})
minetest.register_craft({
	output = 'xtraores_misc:microchip',
	recipe = {
		{'default:copper_ingot', 'xtraores:geminitinum_bar', 'xtraores:geminitinum_bar'},
		{'xtraores:titanium_bar', 'xtraores:geminitinum_bar', 'xtraores:geminitinum_bar'},
		{'', 'xtraores:cobalt_bar', 'xtraores_misc:simple_microchip'},

	}
})

