--Is 3d_armor actually enabled?
if minetest.get_modpath("3d_armor") then
	--Armor registration function
	local function register_armor(name, def)
		armor:register_armor("xtraores_armor:helmet_"..name, {
			description = xtraores.upper(name).." Helmet",
			inventory_image = "xtraores_armor_inv_helmet_"..name..".png",
			groups = def.helmet_groups,
			wear = 0,
		})

		armor:register_armor("xtraores_armor:chestplate_"..name, {
			description = xtraores.upper(name).." Chestplate",
			inventory_image = "xtraores_armor_inv_chestplate_"..name..".png",
			groups = def.chestplate_groups,
			wear = 0,
		})

		armor:register_armor("xtraores_armor:leggings_"..name, {
			description = xtraores.upper(name).." Leggings",
			inventory_image = "xtraores_armor_inv_leggings_"..name..".png",
			groups = def.leggings_groups,
			wear = 0,
		})

		armor:register_armor("xtraores_armor:boots_"..name, {
			description = xtraores.upper(name).." Boots",
			inventory_image = "xtraores_armor_inv_boots_"..name..".png",
			groups = def.boots_groups,
			wear = 0,
		})

		armor:register_armor("xtraores_armor:shield_"..name, {
			description = xtraores.upper(name).." Shield",
			inventory_image = "xtraores_armor_inv_shield_"..name..".png",
			groups = def.shield_groups,
			wear = 0,
		})

		local i = "xtraores:"..name.."_ingot"

		minetest.register_craft({
			output = "xtraores_armor:helmet_"..name,
			recipe = {
				{i, i, i},
				{i, "", i},
				{"", "", ""},
			},
		})
		minetest.register_craft({
			output = "xtraores_armor:chestplate_"..name,
			recipe = {
				{i, "", i},
				{i, i, i},
				{i, i, i},
			},
		})
		minetest.register_craft({
			output = "xtraores_armor:leggings_"..name,
			recipe = {
				{i, i, i},
				{i, "", i},
				{i, "", i},
			},
		})
		minetest.register_craft({
			output = "xtraores_armor:boots_"..name,
			recipe = {
				{i, "", i},
				{i, "", i},
			},
		})
		minetest.register_craft({
			output = "xtraores_armor:shield_"..name,
			recipe = {
				{i, i, i},
				{i, i, i},
				{"", i, ""},
			},
		})
	end

	--Register the armors (that's a lot of words)
	register_armor("platinum", {
		helmet_groups = {armor_head=12, armor_heal=7, armor_use=200},
		chestplate_groups = {armor_torso=17, armor_heal=7, armor_use=200},
		leggings_groups = {armor_legs=17, armor_heal=7, armor_use=200},
		boots_groups = {armor_feet=12, armor_heal=7, armor_use=200},
		shield_groups = {armor_shield=12, armor_heal=7, armor_use=200},
	})

	register_armor("cobalt", {
		helmet_groups = {armor_head=15, armor_heal=12, physics_speed=0.15, armor_use=75},
		chestplate_groups = {armor_torso=20, armor_heal=12, physics_speed=0.15, armor_use=75},
		leggings_groups = {armor_legs=20, armor_heal=12, physics_speed=0.15, armor_use=75},
		boots_groups = {armor_feet=15, armor_heal=12, physics_speed=0.15, armor_use=75},
		shield_groups = {armor_shield=15, armor_heal=12, physics_speed=0.15, armor_use=75},
	})

	register_armor("osmium", {
		helmet_groups = {armor_head=15.4, armor_heal=12, physics_jump=0.15, armor_use=50},
		chestplate_groups = {armor_torso=20.4, armor_heal=12, physics_jump=0.15, armor_use=50},
		leggings_groups = {armor_legs=20.4, armor_heal=12, physics_jump=0.15, armor_use=50},
		boots_groups = {armor_feet=15.4, armor_heal=12, physics_jump=0.15, armor_use=50},
		shield_groups = {armor_shield=15.4, armor_heal=12, physics_jump=0.15, armor_use=50},

	})

	register_armor("adamantite", {
		helmet_groups = {armor_head=16, armor_heal=12, physics_gravity=-0.15, armor_use=30},
		chestplate_groups = {armor_torso=21, armor_heal=12, physics_gravity=-0.15, armor_use=30},
		leggings_groups = {armor_legs=21, armor_heal=12, physics_gravity=-0.15, armor_use=30},
		boots_groups = {armor_feet=16, armor_heal=12, physics_gravity=-0.15, armor_use=30},
		shield_groups = {armor_shield=16, armor_heal=12, physics_gravity=-0.15, armor_use=75},
	})

	register_armor("rarium", {
		helmet_groups = {armor_head=16.4, armor_heal=12, physics_gravity=-0.15, physics_speed=0.15, physics_jump=0.15, armor_use=20},
		chestplate_groups = {armor_torso=21.4, armor_heal=12, physics_gravity=-0.15, physics_speed=0.15, physics_jump=0.15, armor_use=20},
		leggings_groups = {armor_legs=21.4, armor_heal=12, physics_gravity=-0.15, physics_speed=0.15, physics_jump=0.15, armor_use=20},
		boots_groups = {armor_feet=16.4, armor_heal=12, physics_gravity=-0.15, physics_speed=0.15, physics_jump=0.15, armor_use=20},
		shield_groups = {armor_shield=16.4, armor_heal=12, physics_gravity=-0.15, physics_speed=0.15, physics_jump=0.15, armor_use=20},
	})

	register_armor("unobtainium", {
		helmet_groups = {armor_head=17, armor_heal=12, physics_gravity=-0.15, physics_speed=0.15, physics_jump=0.15, armor_fire=1, armor_use=20},
		chestplate_groups = {armor_torso=22, armor_heal=12, physics_gravity=-0.15, physics_speed=0.15, physics_jump=0.15, armor_fire=1, armor_use=20},
		leggings_groups = {armor_legs=22, armor_heal=12, physics_gravity=-0.15, physics_speed=0.15, physics_jump=0.15, armor_fire=1, armor_use=20},
		boots_groups = {armor_feet=17, armor_heal=12, physics_gravity=-0.15, physics_speed=0.15, physics_jump=0.15, armor_fire=1, armor_use=20},
		shield_groups = {armor_shield=17, armor_heal=12, physics_gravity=-0.15, physics_speed=0.15, physics_jump=0.15, armor_fire=1, armor_use=20},
	})

	register_armor("titanium", {
		helmet_groups = {armor_head=17.6, armor_heal=14, physics_gravity=-0.18, physics_speed=0.25, physics_jump=0.16, armor_fire=1, armor_use=20},
		chestplate_groups = {armor_torso=22.6, armor_heal=14, physics_gravity=-0.18, physics_speed=0.25, physics_jump=0.16, armor_fire=1, armor_use=20},
		leggings_groups = {armor_legs=22.6, armor_heal=14, physics_gravity=-0.18, physics_speed=0.25, physics_jump=0.16, armor_fire=1, armor_use=20},
		boots_groups = {armor_feet=17.6, armor_heal=14, physics_gravity=-0.18, physics_speed=0.25, physics_jump=0.16, armor_fire=1, armor_use=20},
		shield_groups = {armor_shield=17.6, armor_heal=14, physics_gravity=-0.18, physics_speed=0.25, physics_jump=0.16, armor_fire=1, armor_use=20},
	})

	minetest.log("action", "[MOD] Xtraores: Module (armor) loaded!")
end


--That's a lot of words. This file used to be ~300 lines though
