
minetest.register_craftitem("xtraores_mdwp:charge", {
	description = "power charge (ammo for laser riffle!)",
	stack_max = 200,
	inventory_image = "xtraores_charge.png",
})

minetest.register_tool("xtraores_mdwp:laser_riffle", {
	description = "laser riffle (needs power charge to shoot|ammo might be expensive, but its worth it for 250dmg!)",
	inventory_image = "xtraores_laser_riffle.png",
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if not inv:contains_item("main", "xtraores_mdwp:charge 1") then
			minetest.sound_play("empty", {object=user})
			return itemstack
		end
		if not minetest.setting_getbool("creative_mode") then
			inv:remove_item("main", "xtraores_mdwp:charge")
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "xtraores_mdwp:lb")
			if obj then
				minetest.sound_play("shot2", {object=obj})
				obj:setvelocity({x=dir.x * 50, y=dir.y * 50, z=dir.z * 50})
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

local XTRAORES_MDWP_LB = {
	physical = false,
	timer = 0,
	visual = "sprite",
	visual_size = {x=0.9, y=0.9,},
	textures = {'xolaser.png'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
XTRAORES_MDWP_LB.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.09 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xtraores_mdwp:lb" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 250
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 250
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

minetest.register_entity("xtraores_mdwp:lb", XTRAORES_MDWP_LB )



minetest.register_craft({
	output = 'xtraores_mdwp:laser_riffle',
	recipe = {
		{'xtraores_misc:microchip', 'xtraores:riffle', 'xtraores:precious_gun'},
		{'', 'xtraores_misc:microchip', 'xtraores:titanium_bar'},
		{'', '', 'xtraores_misc:microchip'},

	}
})

minetest.register_craft({
	output = 'xtraores_mdwp:charge 15',
	recipe = {
		{'', 'xtraores:geminitinum_bar', ''},
		{'xtraores:geminitinum_bar', 'default:mese', 'xtraores:geminitinum_bar'},
		{'xtraores:geminitinum_bar', 'default:mese', 'xtraores:geminitinum_bar'},
	}
})

minetest.register_tool("xtraores_mdwp:rainbowgun", {
	description = "rainbow gun (dosen't need ammo!|the most colorful death possible with 45 dmg each shot)",
	inventory_image = "xtraores_rainbowgun.png",
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if not inv:contains_item("main", "") then
			minetest.sound_play("empty", {object=user})
			return itemstack
		end
		if not minetest.setting_getbool("creative_mode") then
			inv:remove_item("main", "")
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "xtraores_mdwp:lb")
			if obj then
				minetest.sound_play("shot2", {object=obj})
				obj:setvelocity({x=dir.x * 50, y=dir.y * 50, z=dir.z * 50})
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

local XTRAORES_MDWP_RB = {
	physical = false,
	timer = 0,
	visual = "sprite",
	visual_size = {x=0.9, y=0.9,},
	textures = {'xtraores_rainbow.png'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
XTRAORES_MDWP_RB.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.2 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "xtraores_mdwp:rb" and obj:get_luaentity().name ~= "__builtin:item" then
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

minetest.register_entity("xtraores_mdwp:rb", XTRAORES_MDWP_RB )

