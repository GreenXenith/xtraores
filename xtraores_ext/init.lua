minetest.register_craftitem("xtraores_ext:bullet", {
	description = "old bullet (ammo for old riffle!)",
	stack_max = 500,
	inventory_image = "xtraores_bullet.png",
})

minetest.register_tool("xtraores_ext:riffle", {
	description = "old riffle (needs old bullets to shoot|deals 30 dmg)",
	inventory_image = "xtraores_riffle.png",
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if not inv:contains_item("main", "xtraores_ext:bullet 1") then
			minetest.sound_play("empty", {object=user})
			return itemstack
		end
		if not minetest.setting_getbool("creative_mode") then
			inv:remove_item("main", "xtraores_ext:bullet")
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "xtraores_ext:rb")
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

local XTRAORES_EXT_RB = {
	physical = false,
	timer = 0,
	visual = "sprite",
	visual_size = {x=0.075, y=0.075,},
	textures = {'xtraores_old_shot.png'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
XTRAORES_EXT_RB.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.08 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xtraores_ext:rb" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 30
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 30
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

minetest.register_entity("xtraores_ext:rb", XTRAORES_EXT_RB )


minetest.register_node("xtraores_ext:treasure_box", {
	description = "treasure box",
	tiles = {"xtraores_tbox.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.override_item("xtraores_ext:treasure_box", {drop = {
	max_items = 6,
	items = {
		{items = {'xtraores_ext:dagger 1'},rarity = 1000},
		{items = {'xtraores_ext:treasure_box 1'},rarity = 50},
		{items = {'xtraores:rainbow 20'},rarity = 50},
		{items = {'xtraores:geminitinum_brick 10'},rarity = 100},
		{items = {'default:nyancat'},rarity = 100},
		{items = {'xtraores_sword:excalibur'},rarity = 500},
		{items = {'xtraores:gungir'},rarity = 1500},
		{items = {'xtraores_ext:gapple'},rarity = 150},
		{items = {'xtraores_mdwp:rainbowgun'},rarity = 2000},
		{items = {'default:coal_lump 20'},rarity = 5},
		{items = {'default:torch 25'},rarity = 5},
		{items = {'default:steel_ingot 20'},rarity = 5},
		{items = {'xtraores_ext:goblet 1'},rarity = 150},
		{items = {'xtraores_ext:ankh 1'},rarity = 150},
		{items = {'xtraores_ext:dm 1'},rarity = 150},
		{items = {'default:gold_ingot 18'},rarity = 10},
		{items = {'default:bronze_ingot 20'},rarity = 5},
		{items = {'default:copper_ingot 20'},rarity = 5},
		{items = {'default:diamond 15'},rarity = 25},
		{items = {'default:mese 3'},rarity = 20},
		{items = {'xtraores_mdwp:shuriken 15'},rarity = 20},
		{items = {'xtraores:chunai 7'},rarity = 100},
		{items = {'xtraores:375 10'},rarity = 25},
		{items = {'xtraores:charge 3'},rarity = 200},
		{items = {'xtraores:platinum_bar 16'},rarity = 15},
		{items = {'xtraores:cobalt_bar 12'},rarity = 30},
		{items = {'xtraores:osminum_bar 10'},rarity = 40},
		{items = {'xtraores:antracite_lump 10'},rarity = 50},
		{items = {'xtraores:adamantite_bar 8'},rarity = 50},
		{items = {'xtraores:unobtanium_bar 6'},rarity = 75},
		{items = {'xtraores:rarium_bar 5'},rarity = 60},
		{items = {'xtraores:titanium_bar 3'},rarity = 125},
		{items = {'xtraores:geminitinum_lump 1'},rarity = 200},
		{items = {'xtraores:geminitinum_bar 1'},rarity = 300},
		{items = {'xtraores_ext:coin'},rarity = 150},
		{items = {'xtraores_ext:riffle'},rarity = 150},
		{items = {'xtraores_ext:treasure'},rarity = 150},
		{items = {'xtraores_ext:bullet 30'},rarity = 100},
		{items = {'default:apple 5'},rarity = 10},
		{items = {'default:stick 5'},rarity = 10},
		{items = {'default:tree 5'},rarity = 10},
		{items = {'xtraores:marble 40'},rarity = 30},
		{items = {'xtraores:redmarble 40'},rarity = 30},
		{items = {'xtraores:bluemarble 40'},rarity = 30},
		{items = {'xtraores:blackmarble 40'},rarity = 30},
		{items = {'default:brick 50'},rarity = 50},
		{items = {'xtraores:deagle 1'},rarity = 150},
		{items = {'xtraores_armor:helmet_crown 1'},rarity = 500},
	}
}})


minetest.register_ore({
	ore_type       = "scatter",
	ore            = "xtraores_ext:treasure_box",
	wherein        = "default:stone",
	clust_scarcity = 30*30*30,
	clust_num_ores = 1,
	clust_size     = 1,
	height_min     = -31000,
	height_max     = -10,
	flags          = "absheight",
})


minetest.register_tool("xtraores_ext:dagger", {
	description = "acient dagger(the short, but powerful and light dagger, capable of dealing 100 dmg!) ",
	range = 4,
	inventory_image = "xtraores_dagger.png",
	tool_capabilities = {
		full_punch_interval = 0.001,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.0125, [2]=0.05, [3]=0.006}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=100},
	}
})

minetest.register_node("xtraores_ext:gapple", {
	description = "golden apple(artefact!|full of minerals!, restores full health if used)",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"xtraores_gapple.png"},
	inventory_image = "xtraores_gapple.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	groups = {snappy=3},
	on_use = minetest.item_eat(20),
})

minetest.register_node("xtraores_ext:ankh", {
	description = "ankh(artefact!|acient symbol of immortality, restores full health if used)",
	drawtype = "torchlike",
	visual_scale = 1.0,
	tiles = {"xtraores_ankh.png"},
	inventory_image = "xtraores_ankh.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	groups = {snappy=3},
	on_use = minetest.item_eat(20),
})

minetest.register_node("xtraores_ext:coin", {
	description = "old coin(artefact|a mediavel golden coin)",
	walkable = false,
	inventory_image = "xtraores_coin.png",
	drawtype = "raillike",
	tiles = {"xtraores_coin.png"},
	is_ground_content = true,
	paramtype = "light",
	groups = {snappy=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("xtraores_ext:goblet", {
	description = "golden goblet(artefact|wery rare and nice golden goblet!)",
	drawtype = "nodebox",
			node_box = {
				type = "fixed",
				fixed = {       
				{ -0.05, -0.50, -0.05, 0.05, -0.1, 0.05},
				{ -0.15, -0.50, -0.15, 0.15, -0.45, 0.15},
				{ -0.12, -0.50, -0.12, 0.12, -0.42, 0.12},
				{ -0.12, -0.14, -0.12, 0.12, -0.06, 0.12},
				{ -0.07, -0.50, -0.07, 0.07, -0.38, 0.07},
				{ -0.15, -0.1, -0.15, 0.15, -0.05, 0.15},	
				{ 0.15, -0.05, -0.15, 0.20, 0.3, 0.15},
				{ 0.15, -0.05, 0.15, -0.15, 0.3, 0.20},	
				{ 0.15, -0.05, -0.15, -0.15, 0.3, -0.2},
				{ -0.15, -0.05, -0.15, -0.2, 0.3, 0.15},
				{ -0.125, -0.05, 0.125, -0.175, 0.3, 0.175},
				{ -0.125, -0.05, -0.125, -0.175, 0.3, -0.175},
				{ 0.125, -0.05, -0.125, 0.175, 0.3, -0.175},
				{ 0.125, -0.05, 0.125, 0.175, 0.3, 0.175},
				},
			},
	tiles = {"xtraores_gold.png"},
	is_ground_content = true,
	paramtype = "light",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("xtraores_ext:crap", {
	description = "CRAP!(yuck! this thing stinks!, what the heck was it doing in gravel?)",
	drawtype = "nodebox",
			node_box = {
				type = "fixed",
				fixed = {       
				{ -0.25, -0.50, -0.25, 0.25, -0.35, 0.25},	
				{ -0.2, -0.50, -0.2, 0.2, -0.2, 0.2},	
				{ -0.15, -0.50, -0.15, 0.15, -0.1, 0.15},	
				{ 0.0, -0.50, -0.05, -0.1, 0.05, 0.1},	
				},
			},
	tiles = {"xtraores_crap.png"},
	is_ground_content = true,
	paramtype = "light",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("xtraores_ext:treasure", {
	description = "treasure(artefact|wery shiny!)",
	drawtype = "nodebox",
			node_box = {
				type = "fixed",
				fixed = {       
					{ -0.4, -0.50, -0.4, 0.4, 0.00, 0.4},			{ -0.5, -0.50, -0.5, 0.3, -0.3125, 0.5},
		{ -0.3, -0.1, -0.3, 0.3, 0.1, 0.3},				
				},
			},
	tiles = {{
		name="xtraores_treasure.png",
		animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=1},
	}},
	is_ground_content = true,
	paramtype = "light",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_tool("xtraores_ext:legendary_sword", {
	description = "legendary hero blade(true hero's sword! 250 dmg!)",
	inventory_image = "xtraores_legendary_sword.png",
	range = 10,
	tool_capabilities = {
		full_punch_interval = 0.2,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.00, [3]=0.35}, uses=23, maxlevel=3},
		},
		damage_groups = {fleshy=250},
	}
})
minetest.register_node("xtraores_ext:lsr", {
	description = "legendary sword in rock(artefact!|use to get a cool sword!)",
	drawtype = "torchlike",
	visual_scale = 1.0,
	tiles = {"xtraores_lsr.png"},
	inventory_image = "xtraores_lsr.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	groups = {snappy=3},
	on_use = minetest.item_eat(0, 'xtraores:legendary_sword'),
})
minetest.register_node("xtraores_ext:dm", {
	description = "golden dungeon master statue(artefact!, decorative)",
	drawtype = "torchlike",
	visual_scale = 1.0,
	tiles = {"xtraores_dm.png"},
	inventory_image = "xtraores_dm.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	groups = {snappy=3},
})
minetest.register_node("xtraores_ext:bulletb", {
	walkable = false,
	drawtype = "nodebox",
			node_box = {
				type = "fixed",
				fixed = {       
{ -0.25, -0.5, -0.25, 0.25, 0.0, 0.25, },			
				},
			},
	tiles = {"blt_top.png", "blt_top.png",
		"blt_side.png", "blt_side.png",
		"blt_side.png", "blt_side.png"},
	paramtype = "light",
	sunlight_propagates = true,
	drop = 'xtraores:bullet 50',
	is_ground_content = true,
	groups = {snappy=3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("xtraores_ext:riffleb", {
	walkable = false,
	drawtype = "raillike",
	tiles = {"xtraores_riffle.png"},
	is_ground_content = true,
	paramtype = "light",
	drop = 'xtraores:riffle',
	groups = {snappy=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'xtraores_ext:extractinator',
	recipe = {
		{'xtraores:drill_titanium', 'xtraores:titanium_bar', 'xtraores:drill_titanium'},
		{'xtraores_misc:microchip', 'xtraores_misc:microchip', 'xtraores_misc:microchip'},
		{'xtraores:titanium_bar', 'xtraores:titanium_bar', 'xtraores:titanium_bar'},

	}
})

minetest.register_abm({
	nodenames = {"xtraores_ext:extractinator"},
	interval = 1,
	chance = 100,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:gravel" then
			node.name = "xtraores_ext:coin"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xtraores_ext:extractinator"},
	interval = 1,
	chance = 300,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:gravel" then
			node.name = "xtraores_ext:goblet"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xtraores_ext:extractinator"},
	interval = 1,
	chance = 150,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:gravel" then
			node.name = "xtraores_ext:crap"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xtraores_ext:extractinator"},
	interval = 1,
	chance = 250,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:gravel" then
			node.name = "xtraores_ext:treasure"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xtraores_ext:extractinator"},
	interval = 1,
	chance = 10000,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:gravel" then
			node.name = "xtraores_ext:lsr"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xtraores_ext:extractinator"},
	interval = 1,
	chance = 150,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:gravel" then
			node.name = "xtraores_ext:dm"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xtraores_ext:extractinator"},
	interval = 1,
	chance = 150,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:gravel" then
			node.name = "xtraores_ext:ankh"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xtraores_ext:extractinator"},
	interval = 1,
	chance = 100,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:gravel" then
			node.name = "bones:bones"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xtraores_ext:extractinator"},
	interval = 1,
	chance = 100,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:gravel" then
			node.name = "xtraores_ext:bulletb"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xtraores_ext:extractinator"},
	interval = 1,
	chance = 200,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:gravel" then
			node.name = "xtraores_ext:riffleb"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xtraores_ext:extractinator"},
	interval = 1,
	chance = 35,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:gravel" then
			node.name = "xtraores_ext:amber_block"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xtraores_ext:extractinator"},
	interval = 1,
	chance = 50,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:gravel" then
			node.name = "xtraores:stone_with_geminitinum"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xtraores_ext:extractinator"},
	interval = 1,
	chance = 45,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:gravel" then
			node.name = "xtraores:stone_with_titanium"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xtraores_ext:extractinator"},
	interval = 1,
	chance = 43,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:gravel" then
			node.name = "xtraores:stone_with_unobtanium"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xtraores_ext:extractinator"},
	interval = 1,
	chance = 40,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:gravel" then
			node.name = "xtraores:stone_with_rarium"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xtraores_ext:extractinator"},
	interval = 1,
	chance = 35,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:gravel" then
			node.name = "xtraores:stone_with_adamantite"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xtraores_ext:extractinator"},
	interval = 1,
	chance = 32,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:gravel" then
			node.name = "xtraores:stone_with_antracite"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xtraores_ext:extractinator"},
	interval = 1,
	chance = 30,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:gravel" then
			node.name = "xtraores:stone_with_osminum"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xtraores_ext:extractinator"},
	interval = 1,
	chance = 25,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:gravel" then
			node.name = "xtraores:stone_with_cobalt"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xtraores_ext:extractinator"},
	interval = 1,
	chance = 20,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:gravel" then
			node.name = "default:stone_with_diamond"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xtraores_ext:extractinator"},
	interval = 1,
	chance = 15,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:gravel" then
			node.name = "xtraores:stone_with_platinum"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xtraores_ext:extractinator"},
	interval = 1,
	chance = 15,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:gravel" then
			node.name = "default:stone_with_mese"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xtraores_ext:extractinator"},
	interval = 1,
	chance = 9,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:gravel" then
			node.name = "default:stone_with_gold"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xtraores_ext:extractinator"},
	interval = 1,
	chance = 7,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:gravel" then
			node.name = "default:stone_with_iron"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xtraores_ext:extractinator"},
	interval = 1,
	chance = 7,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:gravel" then
			node.name = "default:stone_with_copper"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_abm({
	nodenames = {"xtraores_ext:extractinator"},
	interval = 1,
	chance = 5,
	action = function(pos, node)
		pos.y = pos.y+1
		if minetest.get_node(pos).name == "default:gravel" then
			node.name = "default:stone_with_coal"
			minetest.set_node(pos, node)
		end
	end
})
minetest.register_node("xtraores_ext:extractinator", {
	description = "extractinator(place gravel on top of it to extract an ore, maybie even something better than ore!)",
	tiles = {"xtraores_extractinatortop.png", "xtraores_extractinatortop.png", "xtraores_extractinator.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("xtraores_ext:amber_block", {
	description = "amber block",
	tiles = {"xtraores_amber.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})
