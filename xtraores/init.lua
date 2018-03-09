minetest.register_node("xtraores:stone_with_platinum", {
	description = "Platinum Ore",
	tiles = {"default_stone.png^xtraores_mineral_platinum.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = 'xtraores:platinum_lump',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("xtraores:platinum_brick", {
	description = "Platinum Bricks",
	tiles = {"xtraores_platinum_brick.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craftitem("xtraores:platinum_lump", {
	description = "Platinum Lump",
	inventory_image = "xtraores_platinum_lump.png",
})
minetest.register_craftitem("xtraores:platinum_bar", {
	description = "Blatinum Bar",
	inventory_image = "xtraores_platinum_bar.png",
})
minetest.register_craft({
	type = "cooking",
	output = "xtraores:platinum_bar",
	recipe = "xtraores:platinum_lump",
})
minetest.register_craft({
	output = 'xtraores:platinum_brick',
	recipe = {
		{'xtraores:platinum_lump'},
		{'default:cobble'},
	}
})
minetest.register_tool("xtraores:pick_platinum", {
	description = "Platinum Pickaxe",
	inventory_image = "xtraores_pick_platinum.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.4, [2]=1.2, [3]=0.60}, uses=15, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
})
minetest.register_tool("xtraores:shovel_platinum", {
	description = "Platinum Shovel",
	inventory_image = "xtraores_shovel_platinum.png",
	wield_image = "xtraores_shovel_platinum.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			crumbly = {times={[1]=1.20, [2]=0.60, [3]=0.30}, uses=15, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
})
minetest.register_tool("xtraores:axe_platinum", {
	description = "Platinum Axe",
	inventory_image = "xtraores_axe_platinum.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.20, [2]=1.00, [3]=0.60}, uses=15, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
})
minetest.register_tool("xtraores:sword_platinum", {
	description = "Platinum Sword",
	inventory_image = "xtraores_sword_platinum.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.00, [3]=0.35}, uses=23, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	}
})
minetest.register_craft({
	output = 'xtraores:pick_platinum',
	recipe = {
		{'xtraores:platinum_bar', 'xtraores:platinum_bar', 'xtraores:platinum_bar'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})
minetest.register_craft({
	output = 'xtraores:shovel_platinum',
	recipe = {
		{'xtraores:platinum_bar'},
		{'group:stick'},
		{'group:stick'},
	}
})
minetest.register_craft({
	output = 'xtraores:axe_platinum',
	recipe = {
		{'xtraores:platinum_bar', 'xtraores:platinum_bar'},
		{'xtraores:platinum_bar', 'group:stick'},
		{'', 'group:stick'},
	}
})
minetest.register_craft({
	output = 'xtraores:sword_platinum',
	recipe = {
		{'xtraores:platinum_bar'},
		{'xtraores:platinum_bar'},
		{'group:stick'},
	}
})
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "xtraores:stone_with_platinum",
	wherein        = "default:stone",
	clust_scarcity = 7*7*7,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -100,
	flags          = "absheight",
})
minetest.register_node("xtraores:stone_with_cobalt", {
	description = "Cobalt Ore",
	tiles = {"default_stone.png^xtraores_mineral_cobalt.png"},
	is_ground_content = true,
	groups = {cracky=1},
	drop = 'xtraores:cobalt_lump',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("xtraores:cobalt_brick", {
	description = "Cobalt Bricks",
	tiles = {"xtraores_cobalt_brick.png"},
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craftitem("xtraores:cobalt_lump", {
	description = "Cobalt Lump",
	inventory_image = "xtraores_cobalt_lump.png",
})
minetest.register_craftitem("xtraores:cobalt_bar", {
	description = "Cobalt Bar",
	inventory_image = "xtraores_cobalt_bar.png",
})
minetest.register_craft({
	type = "cooking",
	output = "xtraores:cobalt_bar",
	recipe = "xtraores:cobalt_lump",
})
minetest.register_craft({
	output = 'xtraores:cobalt_brick',
	recipe = {
		{'xtraores:cobalt_lump'},
		{'default:cobble'},
	}
})
minetest.register_tool("xtraores:pick_cobalt", {
	description = "Cobalt Warpick",
	inventory_image = "xtraores_pick_cobalt.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1.5, [2]=0.85, [3]=0.40}, uses=60, maxlevel=3},
			weryhard = {times={[3]=3.00}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
})
minetest.register_tool("xtraores:shovel_cobalt", {
	description = "Cobalt Shovel",
	inventory_image = "xtraores_shovel_cobalt.png",
	wield_image = "xtraores_shovel_cobalt.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			crumbly = {times={[1]=0.90, [2]=0.40, [3]=0.20}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
})
minetest.register_tool("xtraores:axe_cobalt", {
	description = "Cobalt Wraxe",
	inventory_image = "xtraores_axe_cobalt.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.80, [2]=0.70, [3]=0.30}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=9},
	},
})
minetest.register_tool("xtraores:sword_cobalt", {
	description = "Cobalt Cutlas",
	inventory_image = "xtraores_sword_cobalt.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.50, [2]=0.70, [3]=0.20}, uses=70, maxlevel=3},
		},
		damage_groups = {fleshy=10},
	}
})
minetest.register_craft({
	output = 'xtraores:pick_cobalt',
	recipe = {
		{'xtraores:cobalt_bar', 'xtraores:cobalt_bar', 'xtraores:cobalt_bar'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})
minetest.register_craft({
	output = 'xtraores:shovel_cobalt',
	recipe = {
		{'xtraores:cobalt_bar'},
		{'group:stick'},
		{'group:stick'},
	}
})
minetest.register_craft({
	output = 'xtraores:axe_cobalt',
	recipe = {
		{'xtraores:cobalt_bar', 'xtraores:cobalt_bar'},
		{'xtraores:cobalt_bar', 'group:stick'},
		{'', 'group:stick'},
	}
})
minetest.register_craft({
	output = 'xtraores:sword_cobalt',
	recipe = {
		{'xtraores:cobalt_bar'},
		{'xtraores:cobalt_bar'},
		{'group:stick'},
	}
})
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "xtraores:stone_with_cobalt",
	wherein        = "default:stone",
	clust_scarcity = 12*12*12,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -650,
	flags          = "absheight",
})
minetest.register_node("xtraores:stone_with_osminum", {
	description = "osminum ore",
	tiles = {"default_stone.png^xtraores_mineral_osminum.png"},
	is_ground_content = true,
	groups = {weryhard=3},
	drop = 'xtraores:osminum_lump',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("xtraores:osminum_brick", {
	description = "osminum bricks",
	tiles = {"xtraores_osminum_brick.png"},
	is_ground_content = true,
	groups = {weryhard=3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craftitem("xtraores:osminum_lump", {
	description = "osminum lump",
	inventory_image = "xtraores_osminum_lump.png",
})
minetest.register_craftitem("xtraores:osminum_bar", {
	description = "osminum bar",
	inventory_image = "xtraores_osminum_bar.png",
})
minetest.register_craft({
	type = "cooking",
	output = "xtraores:osminum_bar",
	recipe = "xtraores:osminum_lump",
})
minetest.register_craft({
	output = 'xtraores:osminum_brick',
	recipe = {
		{'xtraores:osminum_lump'},
		{'default:cobble'},
	}
})
minetest.register_tool("xtraores:pick_osminum", {
	description = "osminum warpick",
	inventory_image = "xtraores_pick_osminum.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1.2, [2]=0.70, [3]=0.30}, uses=100, maxlevel=3},
			weryhard = {times={[3]=2.00, [2]=3.00}, uses=100, maxlevel=3},
		},
		damage_groups = {fleshy=13},
	},
})
minetest.register_tool("xtraores:shovel_osminum", {
	description = "osminum shovel",
	inventory_image = "xtraores_shovel_osminum.png",
	wield_image = "xtraores_shovel_osminum.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			crumbly = {times={[1]=0.60, [2]=0.25, [3]=0.15}, uses=100, maxlevel=3},
		},
		damage_groups = {fleshy=12},
	},
})
minetest.register_tool("xtraores:axe_osminum", {
	description = "osminum greataxe",
	inventory_image = "xtraores_axe_osminum.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.20, [2]=0.40, [3]=0.15}, uses=100, maxlevel=3},
		},
		damage_groups = {fleshy=14},
	},
})
minetest.register_tool("xtraores:sword_osminum", {
	description = "osminum greatsword",
	inventory_image = "xtraores_sword_osminum.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.0, [2]=0.40, [3]=0.10}, uses=100, maxlevel=3},
		},
		damage_groups = {fleshy=15},
	}
})
minetest.register_craft({
	output = 'xtraores:pick_osminum',
	recipe = {
		{'xtraores:osminum_bar', 'xtraores:osminum_bar', 'xtraores:osminum_bar'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})
minetest.register_craft({
	output = 'xtraores:shovel_osminum',
	recipe = {
		{'xtraores:osminum_bar'},
		{'group:stick'},
		{'group:stick'},
	}
})
minetest.register_craft({
	output = 'xtraores:axe_osminum',
	recipe = {
		{'xtraores:osminum_bar', 'xtraores:osminum_bar'},
		{'xtraores:osminum_bar', 'group:stick'},
		{'', 'group:stick'},
	}
})
minetest.register_craft({
	output = 'xtraores:sword_osminum',
	recipe = {
		{'xtraores:osminum_bar'},
		{'xtraores:osminum_bar'},
		{'group:stick'},
	}
})
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "xtraores:stone_with_osminum",
	wherein        = "default:stone",
	clust_scarcity = 15*15*15,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -1000,
	flags          = "absheight",
})
minetest.register_node("xtraores:stone_with_adamantite", {
	description = "Adamantite Ore",
	tiles = {"default_stone.png^xtraores_mineral_adamantite.png"},
	is_ground_content = true,
	groups = {weryhard=2},
	drop = 'xtraores:adamantite_lump',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("xtraores:adamantite_brick", {
	description = "Adamantite Bricks",
	tiles = {"xtraores_adamantite_brick.png"},
	is_ground_content = true,
	groups = {weryhard=3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craftitem("xtraores:adamantite_lump", {
	description = "Adamantite Lump",
	inventory_image = "xtraores_adamantite_lump.png",
})
minetest.register_craftitem("xtraores:adamantite_bar", {
	description = "Adamantite Bar",
	inventory_image = "xtraores_adamantite_bar.png",
})
minetest.register_craft({
	type = "cooking",
	output = "xtraores:adamantite_bar",
	recipe = "xtraores:adamantite_lump",
})
minetest.register_craft({
	output = 'xtraores:adamantite_brick',
	recipe = {
		{'xtraores:adamantite_lump'},
		{'default:cobble'},
	}
})
minetest.register_tool("xtraores:pick_adamantite", {
	description = "Adamantite Breaker",
	inventory_image = "xtraores_pick_adamantite.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=0.6, [2]=0.35, [3]=0.15}, uses=200, maxlevel=3},
			weryhard = {times={[3]=1.00, [2]=2.00, [1]=3.00}, uses=200, maxlevel=3},
		},
		damage_groups = {fleshy=18},
	},
})
minetest.register_tool("xtraores:shovel_adamantite", {
	description = "Adamantite Shovel",
	inventory_image = "xtraores_shovel_adamantite.png",
	wield_image = "xtraores_shovel_adamantite.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			crumbly = {times={[1]=0.30, [2]=0.125, [3]=0.075}, uses=200, maxlevel=3},
		},
		damage_groups = {fleshy=17},
	},
})
minetest.register_tool("xtraores:axe_adamantite", {
	description = "Adamantite Chainsaw",
	inventory_image = "xtraores_axe_adamantite.png",
	tool_capabilities = {
		full_punch_interval = 0.001,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=0.40, [2]=0.10, [3]=0.03}, uses=200, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
})
minetest.register_tool("xtraores:sword_adamantite", {
	description = "Adamantite Katana",
	inventory_image = "xtraores_sword_adamantite.png",
	tool_capabilities = {
		full_punch_interval = 0.4,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.5, [2]=0.20, [3]=0.05}, uses=200, maxlevel=3},
		},
		damage_groups = {fleshy=20},
	}
})
minetest.register_craft({
	output = 'xtraores:pick_adamantite',
	recipe = {
		{'xtraores:adamantite_bar', 'xtraores:adamantite_bar', 'xtraores:adamantite_bar'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})
minetest.register_craft({
	output = 'xtraores:shovel_adamantite',
	recipe = {
		{'xtraores:adamantite_bar'},
		{'group:stick'},
		{'group:stick'},
	}
})
minetest.register_craft({
	output = 'xtraores:axe_adamantite',
	recipe = {
		{'default:steel_ingot', 'xtraores:adamantite_bar'},
		{'default:steel_ingot', 'xtraores:adamantite_bar'},
		{'', 'xtraores:adamantite_bar'},
	}
})
minetest.register_craft({
	output = 'xtraores:sword_adamantite',
	recipe = {
		{'xtraores:adamantite_bar'},
		{'xtraores:adamantite_bar'},
		{'group:stick'},
	}
})
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "xtraores:stone_with_adamantite",
	wherein        = "default:stone",
	clust_scarcity = 20*20*20,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -2000,
	flags          = "absheight",
})
minetest.register_node("xtraores:stone_with_rarium", {
	description = "Rarium Ore",
	tiles = {"default_stone.png^xtraores_mineral_rarium.png"},
	is_ground_content = true,
	groups = {weryhard=1},
	drop = 'xtraores:rarium_lump',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("xtraores:rarium_brick", {
	description = "Rarium Bricks",
	tiles = {"xtraores_rarium_brick.png"},
	is_ground_content = true,
	groups = {weryhard=1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craftitem("xtraores:rarium_lump", {
	description = "Rarium Lump",
	inventory_image = "xtraores_rarium_lump.png",
})
minetest.register_craftitem("xtraores:rarium_bar", {
	description = "Rarium Bar",
	inventory_image = "xtraores_rarium_bar.png",
})
minetest.register_craft({
	type = "cooking",
	output = "xtraores:rarium_bar",
	recipe = "xtraores:rarium_lump",
})
minetest.register_craft({
	output = 'xtraores:rarium_brick',
	recipe = {
		{'xtraores:rarium_lump'},
		{'default:cobble'},
	}
})
minetest.register_tool("xtraores:drill_rarium", {
	description = "Rarium Drill",
	inventory_image = "xtraores_drill_rarium.png",
	tool_capabilities = {
		full_punch_interval = 0.001,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=0.3, [2]=0.125, [3]=0.075}, uses=350, maxlevel=3},
			weryhard = {times={[3]=0.50, [2]=1.00, [1]=1.50, [0]=2.00}, uses=350, maxlevel=3},
			crumbly = {times={[1]=0.15, [2]=0.06, [3]=0.03}, uses=350, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
})
minetest.register_tool("xtraores:axe_rarium", {
	description = "Rarium Chainsaw",
	inventory_image = "xtraores_axe_rarium.png",
	tool_capabilities = {
		full_punch_interval = 0.001,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=0.20, [2]=0.05, [3]=0.015}, uses=350, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
})
minetest.register_tool("xtraores:sword_rarium", {
	description = "Rarium Slicer",
	inventory_image = "xtraores_sword_rarium.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.25, [2]=0.10, [3]=0.025}, uses=350, maxlevel=3},
		},
		damage_groups = {fleshy=30},
	}
})
minetest.register_craft({
	output = 'xtraores:drill_rarium',
	recipe = {
		{'xtraores:rarium_bar', 'xtraores:rarium_bar', 'xtraores:rarium_bar'},
		{'', 'xtraores:rarium_bar', ''},
		{'', 'default:diamond', ''},
	}
})
minetest.register_craft({
	output = 'xtraores:axe_rarium',
	recipe = {
		{'default:steel_ingot', 'xtraores:rarium_bar'},
		{'default:steel_ingot', 'xtraores:rarium_bar'},
		{'', 'xtraores:rarium_bar'},
	}
})
minetest.register_craft({
	output = 'xtraores:sword_rarium',
	recipe = {
		{'xtraores:rarium_bar'},
		{'xtraores:rarium_bar'},
		{'group:stick'},
	}
})
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "xtraores:stone_with_rarium",
	wherein        = "default:stone",
	clust_scarcity = 25*25*25,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -5000,
	flags          = "absheight",
})
minetest.register_node("xtraores:stone_with_unobtanium", {
	description = "Unobtanium Ore",
	tiles = {"default_stone.png^xtraores_mineral_unobtanium.png"},
	is_ground_content = true,
	groups = {weryhard=0},
	drop = 'xtraores:unobtanium_lump',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("xtraores:unobtanium_brick", {
	description = "Unobtanium Bricks",
	tiles = {"xtraores_unobtanium_brick.png"},
	is_ground_content = true,
	groups = {weryhard=0},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craftitem("xtraores:unobtanium_lump", {
	description = "Unobtanium Lump",
	inventory_image = "xtraores_unobtanium_lump.png",
})
minetest.register_craftitem("xtraores:unobtanium_bar", {
	description = "Unobtanium Bar",
	inventory_image = "xtraores_unobtanium_bar.png",
})
minetest.register_craft({
	type = "cooking",
	output = "xtraores:unobtanium_bar",
	recipe = "xtraores:unobtanium_lump",
})
minetest.register_craft({
	output = 'xtraores:unobtanium_brick',
	recipe = {
		{'xtraores:unobtanium_lump'},
		{'default:cobble'},
	}
})
minetest.register_tool("xtraores:drill_unobtanium", {
	description = "Unobtanium Drill",
	inventory_image = "xtraores_drill_unobtanium.png",
	tool_capabilities = {
		full_punch_interval = 0.001,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=0.15, [2]=0.06, [3]=0.04}, uses=500, maxlevel=3},
			weryhard = {times={[3]=0.25, [2]=0.50, [1]=0.75, [0]=1.00}, uses=500, maxlevel=3},
			crumbly = {times={[1]=0.15, [2]=0.06, [3]=0.03}, uses=500, maxlevel=3},
		},
		damage_groups = {fleshy=12},
	},
})
minetest.register_tool("xtraores:axe_unobtanium", {
	description = "Unobtanium Chainsaw",
	inventory_image = "xtraores_axe_unobtanium.png",
	tool_capabilities = {
		full_punch_interval = 0.001,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=0.10, [2]=0.025, [3]=0.0075}, uses=500, maxlevel=3},
		},
		damage_groups = {fleshy=12},
	},
})
minetest.register_tool("xtraores:sword_unobtanium", {
	description = "Unobtanium Darkness",
	inventory_image = "xtraores_sword_unobtanium.png",
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.0125, [2]=0.05, [3]=0.006}, uses=500, maxlevel=3},
		},
		damage_groups = {fleshy=35},
	}
})
minetest.register_craft({
	output = 'xtraores:drill_unobtanium',
	recipe = {
		{'xtraores:unobtanium_bar', 'xtraores:unobtanium_bar', 'xtraores:unobtanium_bar'},
		{'', 'xtraores:unobtanium_bar', ''},
		{'', 'default:diamond', ''},
	}
})
minetest.register_craft({
	output = 'xtraores:axe_unobtanium',
	recipe = {
		{'default:steel_ingot', 'xtraores:unobtanium_bar'},
		{'default:steel_ingot', 'xtraores:unobtanium_bar'},
		{'', 'xtraores:unobtanium_bar'},
	}
})
minetest.register_craft({
	output = 'xtraores:sword_unobtanium',
	recipe = {
		{'xtraores:unobtanium_bar'},
		{'xtraores:unobtanium_bar'},
		{'group:stick'},
	}
})
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "xtraores:stone_with_unobtanium",
	wherein        = "default:stone",
	clust_scarcity = 30*30*30,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -10000,
	flags          = "absheight",
})

minetest.register_node("xtraores:stone_with_titanium", {
	description = "Titanium Ore",
	tiles = {"default_stone.png^xtraores_mineral_titanium.png"},
	is_ground_content = true,
	groups = {weryhard=0},
	drop = 'xtraores:titanium_lump',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("xtraores:titanium_brick", {
	description = "Titanium Bricks",
	tiles = {"xtraores_titanium_brick.png"},
	is_ground_content = true,
	groups = {weryhard=0},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craftitem("xtraores:titanium_lump", {
	description = "Titanium Lump",
	inventory_image = "xtraores_titanium_lump.png",
})
minetest.register_craftitem("xtraores:titanium_bar", {
	description = "Titanium Bar",
	inventory_image = "xtraores_titanium_bar.png",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	output = "xtraores:titanium_bar",
	recipe = "xtraores:titanium_lump",
})
minetest.register_craft({
	output = 'xtraores:titanium_brick',
	recipe = {
		{'xtraores:titanium_lump'},
		{'default:cobble'},
	}
})

minetest.register_tool("xtraores:axe_titanium", {
	description = "Titanium Chainsaw",
	inventory_image = "xtraores_axe_titanium.png",
	tool_capabilities = {
		full_punch_interval = 0.001,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=0.075, [2]=0.020, [3]=0.005}, uses=650, maxlevel=3},
		},
		damage_groups = {fleshy=15},
	},
})
minetest.register_tool("xtraores:drill_titanium", {
	description = "Titanium Drill",
	inventory_image = "xtraores_drill_titanium.png",
	tool_capabilities = {
		full_punch_interval = 0.001,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=0.10, [2]=0.04, [3]=0.02}, uses=650, maxlevel=3},
			weryhard = {times={[3]=0.10, [2]=0.20, [1]=0.60, [0]=0.80}, uses=650, maxlevel=3},
			crumbly = {times={[1]=0.10, [2]=0.04, [3]=0.02}, uses=650, maxlevel=3},
		},
		damage_groups = {fleshy=15},
	},
})
minetest.register_tool("xtraores:sword_titanium", {
	description = "Titanium Destructonator",
	inventory_image = "xtraores_sword_titanium.png",
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.0125, [2]=0.05, [3]=0.006}, uses=650, maxlevel=3},
		},
		damage_groups = {fleshy=40},
	}
})
minetest.register_craft({
	output = 'xtraores:drill_titanium',
	recipe = {
		{'xtraores:titanium_bar', 'xtraores:titanium_bar', 'xtraores:titanium_bar'},
		{'', 'xtraores:titanium_bar', ''},
		{'', 'default:diamond', ''},
	}
})
minetest.register_craft({
	output = 'xtraores:axe_titanium',
	recipe = {
		{'default:steel_ingot', 'xtraores:titanium_bar'},
		{'default:steel_ingot', 'xtraores:titanium_bar'},
		{'', 'xtraores:titanium_bar'},
	}
})
minetest.register_craft({
	output = 'xtraores:sword_titanium',
	recipe = {
		{'xtraores:titanium_bar'},
		{'xtraores:titanium_bar'},
		{'group:stick'},
	}
})
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "xtraores:stone_with_titanium",
	wherein        = "default:stone",
	clust_scarcity = 30*30*30,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -20000,
	flags          = "absheight",
})

minetest.register_node("xtraores:geminitinum_brick", {
	description = "Crystal Bricks",
	tiles = {{
		name="xtraores_geminitinum_brick.png",
		animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=1},
	}},
	is_ground_content = true,
	light_source = default.LIGHT_MAX - 1,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("xtraores:stone_with_geminitinum", {
	description = "Geminitinum Ore",
	tiles = {"default_stone.png^xtraores_mineral_geminitinum.png"},
	is_ground_content = true,
	groups = {weryhard=0},
	drop = 'xtraores:geminitinum_lump',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craftitem("xtraores:geminitinum_lump", {
	description = "Geminitinum Crystals",
	inventory_image = "xtraores_geminitinum_lump.png",
})
minetest.register_craftitem("xtraores:geminitinum_bar", {
	description = "Geminitinum Bar",
	inventory_image = "xtraores_geminitinum_bar.png",
})
minetest.register_craft({
	type = "cooking",
	cooktime = 200,
	output = "xtraores:geminitinum_bar",
	recipe = "xtraores:geminitinum_lump",
})
minetest.register_craft({
	output = 'xtraores:geminitinum_brick',
	recipe = {
		{'xtraores:geminitinum_lump'},
		{'default:cobble'},
	}
})

minetest.register_tool("xtraores:axe_geminitinum", {
	description = "Geminitinum Chainsaw",
	inventory_image = "xtraores_axe_geminitinum.png",
	tool_capabilities = {
		full_punch_interval = 0.001,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=0.001, [2]=0.001, [3]=0.001}, uses=1000, maxlevel=3},
		},
		damage_groups = {fleshy=20},
	},
})
minetest.register_tool("xtraores:drill_geminitinum", {
	description = "Geminitinum Drill",
	inventory_image = "xtraores_drill_geminitinum.png",
	tool_capabilities = {
		full_punch_interval = 0.001,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=0.01, [2]=0.01, [3]=0.01}, uses=1000, maxlevel=3},
			weryhard = {times={[3]=0.01, [2]=0.01, [1]=0.01, [0]=0.01}, uses=1000, maxlevel=3},
			crumbly = {times={[1]=0.01, [2]=0.01, [3]=0.01}, uses=1000, maxlevel=3},
		},
		damage_groups = {fleshy=20},
	},
})
minetest.register_tool("xtraores:sword_geminitinum", {
	description = "Nyanmere",
	inventory_image = "xtraores_sword_geminitinum.png",
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.01, [2]=0.03, [3]=0.002}, uses=1000, maxlevel=3},
		},
		damage_groups = {fleshy=50},
	}
})
minetest.register_craft({
	output = 'xtraores:drill_geminitinum',
	recipe = {
		{'xtraores:geminitinum_bar', 'xtraores:geminitinum_bar', 'xtraores:geminitinum_bar'},
		{'', 'xtraores:titanium_bar', ''},
		{'', 'default:diamond', ''},
	}
})
minetest.register_craft({
	output = 'xtraores:axe_geminitinum',
	recipe = {
		{'default:steel_ingot', 'xtraores:geminitinum_bar'},
		{'default:steel_ingot', 'xtraores:geminitinum_bar'},
		{'', 'xtraores:geminitinum_bar'},
	}
})
minetest.register_craft({
	output = 'xtraores:sword_geminitinum',
	recipe = {
		{'xtraores:geminitinum_bar'},
		{'xtraores:geminitinum_bar'},
		{'group:stick'},
	}
})
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "xtraores:stone_with_geminitinum",
	wherein        = "default:stone",
	clust_scarcity = 30*30*30,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -30000,
	flags          = "absheight",
})

minetest.register_node("xtraores:geminitinum_brick", {
	description = "Crystal Bricks",
	tiles = {{
		name="xtraores_geminitinum_brick.png",
		animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=1},
	}},
	is_ground_content = true,
	light_source = default.LIGHT_MAX - 1,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xtraores:geminitinum_brick',
	recipe = {
		{'xtraores:geminitinum_lump'},
		{'default:cobble'},
	}
})
minetest.register_tool("xtraores:sword_excalibur", {
	description = "Excalibur | 75 dmg",
	inventory_image = "xtraores_sword_excalibur.png",
	tool_capabilities = {
		full_punch_interval = 0.1,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.0125, [2]=0.05, [3]=0.006}, uses=500, maxlevel=3},
		},
		damage_groups = {fleshy=75},
	}
})
minetest.register_craft({
	output = 'xtraores:sword_excalibur',
	recipe = {
		{'xtraores:sword_osminum', 'xtraores:sword_adamantite', 'xtraores:sword_rarium'},
		{'xtraores:sword_cobalt', 'default:sword_diamond', 'xtraores:sword_unobtanium'},
		{'default:diamondblock', 'default:mese', 'default:diamondblock'},
	}
})
minetest.register_node("xtraores:rainbow", {
	description = "Rainbow Block",
	tiles = {"xtraores_rainbow_block.png"},
	light_source = default.LIGHT_MAX - 1,
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = 'xtraores:rainbow 10',
	recipe = {
		{'xtraores:adamantite_bar', 'xtraores:rarium_bar', 'xtraores:platinum_bar'},
		{'xtraores:cobalt_bar', 'default:glass', 'xtraores:osminum_bar'},
		{'default:diamond', 'default:mese_crystal', 'default:copper_ingot'},
	}
})
minetest.register_tool("xtraores:spear_platinum", {
	description = "Platinum Spear",
	inventory_image = "xtraores_spear_platinum.png",
	range = 12,
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.00, [3]=0.35}, uses=23, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	}
})
minetest.register_craft({
	output = 'xtraores:spear_platinum',
	recipe = {
		{'', 'xtraores:platinum_bar', 'xtraores:platinum_bar'},
		{'', 'group:stick', 'xtraores:platinum_bar'},
		{'group:stick', '', ''},
	}
})
minetest.register_tool("xtraores:spear_cobalt", {
	description = "Cobalt Spear",
	inventory_image = "xtraores_spear_cobalt.png",
	range = 12,
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.00, [3]=0.35}, uses=23, maxlevel=3},
		},
		damage_groups = {fleshy=10},
	}
})
minetest.register_craft({
	output = 'xtraores:spear_cobalt',
	recipe = {
		{'', 'xtraores:cobalt_bar', 'xtraores:cobalt_bar'},
		{'', 'group:stick', 'xtraores:cobalt_bar'},
		{'group:stick', '', ''},
	}
})
minetest.register_tool("xtraores:spear_osminum", {
	description = "osminum spear",
	inventory_image = "xtraores_spear_osminum.png",
	range = 12,
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.00, [3]=0.35}, uses=23, maxlevel=3},
		},
		damage_groups = {fleshy=15},
	}
})
minetest.register_craft({
	output = 'xtraores:spear_osminum',
	recipe = {
		{'', 'xtraores:osminum_bar', 'xtraores:osminum_bar'},
		{'', 'group:stick', 'xtraores:osminum_bar'},
		{'group:stick', '', ''},
	}
})
minetest.register_tool("xtraores:spear_adamantite", {
	description = "Adamantite Spear",
	inventory_image = "xtraores_spear_adamantite.png",
	range = 12,
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.00, [3]=0.35}, uses=23, maxlevel=3},
		},
		damage_groups = {fleshy=20},
	}
})
minetest.register_craft({
	output = 'xtraores:spear_adamantite',
	recipe = {
		{'', 'xtraores:adamantite_bar', 'xtraores:adamantite_bar'},
		{'', 'group:stick', 'xtraores:adamantite_bar'},
		{'group:stick', '', ''},
	}
})

minetest.register_tool("xtraores:spear_rarium", {
	description = "Rarium Spear",
	inventory_image = "xtraores_spear_rarium.png",
	range = 12,
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.00, [3]=0.35}, uses=23, maxlevel=3},
		},
		damage_groups = {fleshy=30},
	}
})
minetest.register_craft({
	output = 'xtraores:spear_rarium',
	recipe = {
		{'', 'xtraores:rarium_bar', 'xtraores:rarium_bar'},
		{'', 'group:stick', 'xtraores:rarium_bar'},
		{'group:stick', '', ''},
	}
})
minetest.register_tool("xtraores:spear_unobtanium", {
	description = "Unobtanium Spear",
	inventory_image = "xtraores_spear_unobtanium.png",
	range = 12,
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.00, [3]=0.35}, uses=23, maxlevel=3},
		},
		damage_groups = {fleshy=35},
	}
})
minetest.register_craft({
	output = 'xtraores:spear_unobtanium',
	recipe = {
		{'', 'xtraores:unobtanium_bar', 'xtraores:unobtanium_bar'},
		{'', 'group:stick', 'xtraores:unobtanium_bar'},
		{'group:stick', '', ''},
	}
})
minetest.register_tool("xtraores:spear_titanium", {
	description = "Titanium Spear",
	inventory_image = "xtraores_spear_titanium.png",
	range = 12,
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.00, [3]=0.35}, uses=23, maxlevel=3},
		},
		damage_groups = {fleshy=40},
	}
})
minetest.register_craft({
	output = 'xtraores:spear_titanium',
	recipe = {
		{'', 'xtraores:titanium_bar', 'xtraores:titanium_bar'},
		{'', 'group:stick', 'xtraores:titanium_bar'},
		{'group:stick', '', ''},
	}
})
minetest.register_tool("xtraores:spear_geminitinum", {
	description = "Geminitinum Spear",
	inventory_image = "xtraores_spear_geminitinum.png",
	range = 12,
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.00, [3]=0.35}, uses=23, maxlevel=3},
		},
		damage_groups = {fleshy=50},
	}
})
minetest.register_craft({
	output = 'xtraores:spear_geminitinum',
	recipe = {
		{'', 'xtraores:geminitinum_bar', 'xtraores:geminitinum_bar'},
		{'', 'group:stick', 'xtraores:geminitinum_bar'},
		{'group:stick', '', ''},
	}
})

minetest.register_craftitem("xtraores:titanium_bullet", {
	description = "Titanium bullet | Ammo for titanium gun",
	inventory_image = "xtraores_titanium_bullet.png",
})

minetest.register_craft({
	output = 'xtraores:titanium_bullet 225',
	recipe = {
		{'', 'xtraores:titanium_bar', 'xtraores:titanium_bar'},
		{'', 'default:mese_crystal', 'default:mese_crystal'},
		{'', 'xtraores:titanium_bar', 'xtraores:titanium_bar'},
	}
})

minetest.register_tool("xtraores:titanium_gun", {
	description = "Titanium Gun | 45 dmg (requires titanium bullets)",
	inventory_image = "xtraores_titanium_gun.png",
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if not inv:contains_item("main", "xtraores:titanium_bullet 1") then
			minetest.sound_play("empty", {object=user})
			return itemstack
		end
		if not minetest.setting_getbool("creative_mode") then
			inv:remove_item("main", "xtraores:titanium_bullet")
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "xtraores:tb")
			if obj then
				minetest.sound_play("shot", {object=obj})
				obj:setvelocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				obj:setacceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = ent.player or user
				end
			end
		end
		return itemstack
	end,
})

local XTRAORES_TB = {
	physical = false,
	timer = 0,
	visual = "sprite",
	visual_size = {x=0.075, y=0.075,},
	textures = {'xtraores_titanium_shot.png'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
XTRAORES_TB.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.08 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 2)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xtraores:tb" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 45
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 45
				obj:punch(self.object, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("xtraores:tb", XTRAORES_TB )



minetest.register_craftitem("xtraores:titanium_barrel", {
	description = "Titanium Barrel (titanium gun part)",
	inventory_image = "xtraores_titanium_barrel.png",
})
minetest.register_craftitem("xtraores:titanium_top", {
	description = "Titanium Gun Top (titanium gun part)",
	inventory_image = "xtraores_titanium_top.png",
})
minetest.register_craftitem("xtraores:titanium_bottom", {
	description = "Titanium Gun Bottom (titanium gun part)",
	inventory_image = "xtraores_titanium_bottom.png",
})
minetest.register_craftitem("xtraores:titanium_handle", {
	description = "Titanium Handle (titanium gun part)",
	inventory_image = "xtraores_titanium_handle.png",
})
minetest.register_craftitem("xtraores:titanium_mechanism", {
	description = "Titanium Gun Mechanism (titanium gun part)",
	inventory_image = "xtraores_titanium_mechanism.png",
})
minetest.register_craft({
	output = 'xtraores:titanium_gun',
	recipe = {
		{'xtraores:titanium_barrel', 'xtraores:titanium_top', 'xtraores:titanium_mechanism'},
		{'', 'xtraores:titanium_bottom', 'xtraores:titanium_handle'},
	
	}
})

minetest.register_craft({
	output = 'xtraores:titanium_barrel',
	recipe = {
		{'xtraores:titanium_bar', 'xtraores:titanium_bar', 'xtraores:titanium_bar'},
		{'', '', ''},
		{'xtraores:titanium_bar', 'xtraores:titanium_bar', 'xtraores:titanium_bar'},
	}
})
minetest.register_craft({
	output = 'xtraores:titanium_top',
	recipe = {
		{'xtraores:titanium_bar', 'xtraores:titanium_bar', 'xtraores:titanium_bar'},
		{'', '', 'xtraores:titanium_bar'},
	}
})
minetest.register_craft({
	output = 'xtraores:titanium_bottom',
	recipe = {
		{'xtraores:titanium_bar', 'xtraores:titanium_bar', 'xtraores:titanium_bar'},
		{'default:mese', 'default:mese', ''},
	}
})
minetest.register_craft({
	output = 'xtraores:titanium_handle',
	recipe = {
		{'', 'xtraores:titanium_bar', 'xtraores:titanium_bar'},
		{'', 'xtraores:titanium_bar', 'xtraores:titanium_bar'},
		{'', 'xtraores:titanium_bar', 'xtraores:titanium_bar'},
	}
})
minetest.register_craft({
	output = 'xtraores:titanium_mechanism',
	recipe = {
		{'xtraores:titanium_bar', 'xtraores:titanium_bar', 'xtraores:titanium_bar'},
		{'', 'xtraores:titanium_bar', ''},
		{'', '', 'xtraores:titanium_bar'},
	}
})

minetest.register_tool("xtraores:precious_gun", {
	description = "Precious Gun | 75 dmg (requries titanium bullets)",
	inventory_image = "xtraores_precious_gun.png",
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if not inv:contains_item("main", "xtraores:titanium_bullet 1") then
			minetest.sound_play("empty", {object=user})
			return itemstack
		end
		if not minetest.setting_getbool("creative_mode") then
			inv:remove_item("main", "xtraores:titanium_bullet")
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "xtraores:ptb")
			if obj then
				minetest.sound_play("shot_heavy", {object=obj})
				obj:setvelocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				obj:setacceleration({x=dir.x * 0, y=0, z=dir.z * 0})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = ent.player or user
				end
			end
		end
		return itemstack
	end,
})

local XTRAORES_PTB = {
	physical = false,
	timer = 0,
	visual = "sprite",
	visual_size = {x=0.075, y=0.075,},
	textures = {'xtraores_precious_shot.png'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
XTRAORES_PTB.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.08 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 2)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xtraores:ptb" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 75
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 75
				obj:punch(self.object, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("xtraores:ptb", XTRAORES_PTB )

minetest.register_craft({
	output = 'xtraores:precious_gun',
	recipe = {
		{'xtraores:geminitinum_bar', 'xtraores:geminitinum_bar', 'xtraores:geminitinum_bar'},
		{'xtraores:geminitinum_bar', 'xtraores:titanium_gun', 'xtraores:geminitinum_bar'},
		{'xtraores:geminitinum_bar', 'xtraores:geminitinum_bar', 'xtraores:geminitinum_bar'},

	}
})
minetest.register_craftitem("xtraores:chunai", {
	description = "Titanium Chunai | 60 dmg",
	range = 0,
	inventory_image = "xtraores_chunai.png",
	on_use = function(itemstack, user, pointed_thing)
			if not minetest.setting_getbool("creative_mode") then itemstack:take_item()
		end
		if pointed_thing.type ~= "nothing" then
			local pointed = minetest.get_pointed_thing_position(pointed_thing)
			if vector.distance(user:getpos(), pointed) < 8 then
				return itemstack
			end
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir then
			pos.y = pos.y + 1.5
			local obj = minetest.add_entity(pos, "xtraores:ce")
			if obj then
				obj:setvelocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				obj:setacceleration({x=dir.x * -3, y=-10, z=dir.z * -3})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = ent.player or user
				end
			end
		end
		return itemstack
	end,
})

local XTRAORES_CE = {
	physical = false,
	timer = 0,
	visual = "cube",
	visual_size = {x=1, y=0,},
	textures = {'xtraores_chunai.png', 'xtraores_chunai.png', 'xtraores_chunai.png', 'xtraores_chunai.png', 'xtraores_chunai.png', 'xtraores_chunai.png'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
XTRAORES_CE.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.08 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 2)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xtraores:ce" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 60
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 60
				obj:punch(self.object, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "xtraores:chunai")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("xtraores:ce", XTRAORES_CE )


minetest.register_craft({
	output = 'xtraores:chunai 25',
	recipe = {
		{'xtraores:titanium_bar', 'xtraores:titanium_bar', ''},
		{'xtraores:titanium_bar', 'xtraores:titanium_bar', ''},
		{'', '', 'xtraores:titanium_bar'},

	}
})

minetest.register_craftitem("xtraores:375", {
	description = "375. Bullets",
	stack_max = 500,
	inventory_image = "xtraores_375.png",
})

minetest.register_tool("xtraores:deagle", {
	description = "Desert Eagle | 25 dmg (requires 375. bullets)",
	inventory_image = "xtraores_deagle.png",
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if not inv:contains_item("main", "xtraores:375 1") then
			minetest.sound_play("empty", {object=user})
			return itemstack
		end
		if not minetest.setting_getbool("creative_mode") then
			inv:remove_item("main", "xtraores:375")
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "xtraores:db")
			if obj then
				minetest.sound_play("shot", {object=obj})
				obj:setvelocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				obj:setacceleration({x=dir.x * 0, y=0, z=dir.z * 0})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = ent.player or user
				end
			end
		end
		return itemstack
	end,
})

local XTRAORES_DB = {
	physical = false,
	timer = 0,
	visual = "sprite",
	visual_size = {x=0.075, y=0.075,},
	textures = {'xtraores_brass_shot.png'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
XTRAORES_DB.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.08 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 2)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xtraores:db" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 25
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 25
				obj:punch(self.object, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("xtraores:db", XTRAORES_DB )

minetest.register_craft({
	output = 'xtraores:deagle',
	recipe = {
		{'xtraores:platinum_bar', 'xtraores:platinum_bar', 'xtraores:platinum_bar'},
		{'', 'xtraores:platinum_bar', 'xtraores:unobtanium_bar'},
		{'', '', 'xtraores:unobtanium_bar'},

	}
})

minetest.register_craft({
	output = 'xtraores:375 7',
	recipe = {
		{'xtraores:adamantite_bar'},
		{'default:gold_ingot'},
		{'default:gold_ingot'},
	}
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "xtraores:redmarble",
	wherein        = "default:stone",
	clust_scarcity = 7*7*7,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -8000,
	flags          = "absheight",
})
minetest.register_craft({
	output = 'xtraores:redmarble_polished',
	recipe = {
		{'xtraores:redmarble'},
	}
})
minetest.register_craft({
	output = 'xtraores:redmarble_bricks 4',
	recipe = {
		{'xtraores:redmarble', 'xtraores:redmarble'},
		{'xtraores:redmarble', 'xtraores:redmarble'},
	}
})
minetest.register_node("xtraores:redmarble_polished", {
	description = "Polished Red Marble",
	tiles = {"xtraores_redmarble_polished.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("xtraores:redmarble_bricks", {
	description = "Red Marble Bricks",
	tiles = {"xtraores_redmarble_bricks.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("xtraores:redmarble", {
	description = "Red Marble",
	tiles = {"xtraores_redmarble.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "xtraores:bluemarble",
	wherein        = "default:stone",
	clust_scarcity = 7*7*7,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -4000,
	flags          = "absheight",
})
minetest.register_craft({
	output = 'xtraores:bluemarble_polished',
	recipe = {
		{'xtraores:bluemarble'},
	}
})
minetest.register_craft({
	output = 'xtraores:bluemarble_bricks 4',
	recipe = {
		{'xtraores:bluemarble', 'xtraores:bluemarble'},
		{'xtraores:bluemarble', 'xtraores:bluemarble'},
	}
})
minetest.register_node("xtraores:bluemarble_polished", {
	description = "Polished Blue Marble",
	tiles = {"xtraores_bluemarble_polished.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("xtraores:bluemarble_bricks", {
	description = "Blue Marble Bricks",
	tiles = {"xtraores_bluemarble_bricks.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("xtraores:bluemarble", {
	description = "Blue Marble",
	tiles = {"xtraores_bluemarble.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "xtraores:blackmarble",
	wherein        = "default:stone",
	clust_scarcity = 7*7*7,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -2000,
	flags          = "absheight",
})
minetest.register_craft({
	output = 'xtraores:blackmarble_polished',
	recipe = {
		{'xtraores:blackmarble'},
	}
})
minetest.register_craft({
	output = 'xtraores:blackmarble_bricks 4',
	recipe = {
		{'xtraores:blackmarble', 'xtraores:blackmarble'},
		{'xtraores:blackmarble', 'xtraores:blackmarble'},
	}
})
minetest.register_node("xtraores:blackmarble_polished", {
	description = "Polished Black Marble",
	tiles = {"xtraores_blackmarble_polished.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("xtraores:blackmarble_bricks", {
	description = "Black Marble Bricks",
	tiles = {"xtraores_blackmarble_bricks.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("xtraores:blackmarble", {
	description = "Black Marble",
	tiles = {"xtraores_blackmarble.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "xtraores:marble",
	wherein        = "default:stone",
	clust_scarcity = 7*7*7,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -1000,
	flags          = "absheight",
})
minetest.register_craft({
	output = 'xtraores:marble_polished',
	recipe = {
		{'xtraores:marble'},
	}
})
minetest.register_craft({
	output = 'xtraores:marble_bricks 4',
	recipe = {
		{'xtraores:marble', 'xtraores:marble'},
		{'xtraores:marble', 'xtraores:marble'},
	}
})
minetest.register_node("xtraores:marble_polished", {
	description = "Polished White Marble",
	tiles = {"xtraores_marble_polished.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("xtraores:marble_bricks", {
	description = "White Marble Bricks",
	tiles = {"xtraores_marble_bricks.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("xtraores:marble", {
	description = "White Marble",
	tiles = {"xtraores_marble.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_tool("xtraores:spear_gungir", {
	description = "The Gungir (spear) | 160 dmg",
	inventory_image = "xtraores_spear_gungir.png",
	range = 12,
	tool_capabilities = {
		full_punch_interval = 0.3,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.00, [3]=0.35}, uses=200, maxlevel=3},
		},
		damage_groups = {fleshy=160},
	}
})
minetest.register_craft({
	output = 'xtraores:spear_gungir',
	recipe = {
		{'xtraores:sword_excalibur', 'xtraores:sword_excalibur', 'xtraores:geminitinum_bar'},
		{'xtraores:spear_geminitinum', 'xtraores:spear_geminitinum', 'xtraores:geminitinum_bar'},
		{'xtraores:sword_excalibur', 'xtraores:sword_excalibur', 'xtraores:geminitinum_bar'},

	}
})



