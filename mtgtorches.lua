local S = minetest.get_translator("moretorches")

minetest.register_node("moretorches:acaciatorch", {
	description = S("Acacia Torch"),
	drawtype = "mesh",
	mesh = "torch_floor.obj",
	inventory_image = "moretorches_acaciatorch_on_floor.png",
	wield_image = "moretorches_acaciatorch_on_floor.png",
	tiles = {{
		    name = "moretorches_acaciatorch_on_floor_animated.png",
		    animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 3.3}
	}},
	use_texture_alpha = "clip",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	liquids_pointable = false,
	light_source = 12,
	groups = {choppy=2, dig_immediate=3, flammable=1, attached_node=1, torch=1},
	drop = "moretorches:acaciatorch",
	selection_box = {
		type = "wallmounted",
		wall_bottom = {-1/8, -1/2, -1/8, 1/8, 2/16, 1/8},
	},
	sounds = default.node_sound_wood_defaults(),
	on_place = function(itemstack, placer, pointed_thing)
		local under = pointed_thing.under
		local node = minetest.get_node(under)
		local def = minetest.registered_nodes[node.name]
		if def and def.on_rightclick and
			not (placer and placer:is_player() and
			placer:get_player_control().sneak) then
			return def.on_rightclick(under, node, placer, itemstack,
				pointed_thing) or itemstack
		end

		local above = pointed_thing.above
		local wdir = minetest.dir_to_wallmounted(vector.subtract(under, above))
		local fakestack = itemstack
		if wdir == 0 then
			fakestack:set_name("moretorches:acaciatorch_ceiling")
		elseif wdir == 1 then
			fakestack:set_name("moretorches:acaciatorch")
		else
			fakestack:set_name("moretorches:acaciatorch_wall")
		end

		itemstack = minetest.item_place(fakestack, placer, pointed_thing, wdir)
		itemstack:set_name("moretorches:acaciatorch")

		return itemstack
	end,
	floodable = true,
	on_flood = on_flood,
	on_rotate = false
})

minetest.register_node("moretorches:acaciatorch_wall", {
	drawtype = "mesh",
	mesh = "torch_wall.obj",
	tiles = {{
		    name = "moretorches_acaciatorch_on_floor_animated.png",
		    animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 3.3}
	}},
	use_texture_alpha = "clip",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	light_source = 12,
	groups = {choppy=2, dig_immediate=3, flammable=1, not_in_creative_inventory=1, attached_node=1, torch=1},
	drop = "moretorches:acaciatorch",
	selection_box = {
		type = "wallmounted",
		wall_side = {-1/2, -1/2, -1/8, -1/8, 1/8, 1/8},
	},
	sounds = default.node_sound_wood_defaults(),
	floodable = true,
	on_flood = on_flood,
	on_rotate = false
})

minetest.register_node("moretorches:acaciatorch_ceiling", {
	drawtype = "mesh",
	mesh = "torch_ceiling.obj",
	tiles = {{
		    name = "moretorches_acaciatorch_on_floor_animated.png",
		    animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 3.3}
	}},
	use_texture_alpha = "clip",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	light_source = 12,
	groups = {choppy=2, dig_immediate=3, flammable=1, not_in_creative_inventory=1, attached_node=1, torch=1},
	drop = "moretorches:acaciatorch",
	selection_box = {
		type = "wallmounted",
		wall_top = {-1/8, -1/16, -5/16, 1/8, 1/2, 1/8},
	},
	sounds = default.node_sound_wood_defaults(),
	floodable = true,
	on_flood = on_flood,
	on_rotate = false
})

minetest.register_node("moretorches:aspentorch", {
	description = S("Aspen Torch"),
	drawtype = "mesh",
	mesh = "torch_floor.obj",
	inventory_image = "moretorches_aspentorch_on_floor.png",
	wield_image = "moretorches_aspentorch_on_floor.png",
	tiles = {{
		    name = "moretorches_aspentorch_on_floor_animated.png",
		    animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 3.3}
	}},
	use_texture_alpha = "clip",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	liquids_pointable = false,
	light_source = 12,
	groups = {choppy=2, dig_immediate=3, flammable=1, attached_node=1, torch=1},
	drop = "moretorches:aspentorch",
	selection_box = {
		type = "wallmounted",
		wall_bottom = {-1/8, -1/2, -1/8, 1/8, 2/16, 1/8},
	},
	sounds = default.node_sound_wood_defaults(),
	on_place = function(itemstack, placer, pointed_thing)
		local under = pointed_thing.under
		local node = minetest.get_node(under)
		local def = minetest.registered_nodes[node.name]
		if def and def.on_rightclick and
			not (placer and placer:is_player() and
			placer:get_player_control().sneak) then
			return def.on_rightclick(under, node, placer, itemstack,
				pointed_thing) or itemstack
		end

		local above = pointed_thing.above
		local wdir = minetest.dir_to_wallmounted(vector.subtract(under, above))
		local fakestack = itemstack
		if wdir == 0 then
			fakestack:set_name("moretorches:aspentorch_ceiling")
		elseif wdir == 1 then
			fakestack:set_name("moretorches:aspentorch")
		else
			fakestack:set_name("moretorches:aspentorch_wall")
		end

		itemstack = minetest.item_place(fakestack, placer, pointed_thing, wdir)
		itemstack:set_name("moretorches:aspentorch")

		return itemstack
	end,
	floodable = true,
	on_flood = on_flood,
	on_rotate = false
})

minetest.register_node("moretorches:aspentorch_wall", {
	drawtype = "mesh",
	mesh = "torch_wall.obj",
	tiles = {{
		    name = "moretorches_aspentorch_on_floor_animated.png",
		    animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 3.3}
	}},
	use_texture_alpha = "clip",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	light_source = 12,
	groups = {choppy=2, dig_immediate=3, flammable=1, not_in_creative_inventory=1, attached_node=1, torch=1},
	drop = "moretorches:aspentorch",
	selection_box = {
		type = "wallmounted",
		wall_side = {-1/2, -1/2, -1/8, -1/8, 1/8, 1/8},
	},
	sounds = default.node_sound_wood_defaults(),
	floodable = true,
	on_flood = on_flood,
	on_rotate = false
})

minetest.register_node("moretorches:aspentorch_ceiling", {
	drawtype = "mesh",
	mesh = "torch_ceiling.obj",
	tiles = {{
		    name = "moretorches_aspentorch_on_floor_animated.png",
		    animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 3.3}
	}},
	use_texture_alpha = "clip",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	light_source = 12,
	groups = {choppy=2, dig_immediate=3, flammable=1, not_in_creative_inventory=1, attached_node=1, torch=1},
	drop = "moretorches:aspentorch",
	selection_box = {
		type = "wallmounted",
		wall_top = {-1/8, -1/16, -5/16, 1/8, 1/2, 1/8},
	},
	sounds = default.node_sound_wood_defaults(),
	floodable = true,
	on_flood = on_flood,
	on_rotate = false
})

minetest.register_node("moretorches:pinetorch", {
	description = S("Pine Torch"),
	drawtype = "mesh",
	mesh = "torch_floor.obj",
	inventory_image = "moretorches_pinetorch_on_floor.png",
	wield_image = "moretorches_pinetorch_on_floor.png",
	tiles = {{
		    name = "moretorches_pinetorch_on_floor_animated.png",
		    animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 3.3}
	}},
	use_texture_alpha = "clip",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	liquids_pointable = false,
	light_source = 12,
	groups = {choppy=2, dig_immediate=3, flammable=1, attached_node=1, torch=1},
	drop = "moretorches:pinetorch",
	selection_box = {
		type = "wallmounted",
		wall_bottom = {-1/8, -1/2, -1/8, 1/8, 2/16, 1/8},
	},
	sounds = default.node_sound_wood_defaults(),
	on_place = function(itemstack, placer, pointed_thing)
		local under = pointed_thing.under
		local node = minetest.get_node(under)
		local def = minetest.registered_nodes[node.name]
		if def and def.on_rightclick and
			not (placer and placer:is_player() and
			placer:get_player_control().sneak) then
			return def.on_rightclick(under, node, placer, itemstack,
				pointed_thing) or itemstack
		end

		local above = pointed_thing.above
		local wdir = minetest.dir_to_wallmounted(vector.subtract(under, above))
		local fakestack = itemstack
		if wdir == 0 then
			fakestack:set_name("moretorches:pinetorch_ceiling")
		elseif wdir == 1 then
			fakestack:set_name("moretorches:pinetorch")
		else
			fakestack:set_name("moretorches:pinetorch_wall")
		end

		itemstack = minetest.item_place(fakestack, placer, pointed_thing, wdir)
		itemstack:set_name("moretorches:pinetorch")

		return itemstack
	end,
	floodable = true,
	on_flood = on_flood,
	on_rotate = false
})

minetest.register_node("moretorches:pinetorch_wall", {
	drawtype = "mesh",
	mesh = "torch_wall.obj",
	tiles = {{
		    name = "moretorches_pinetorch_on_floor_animated.png",
		    animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 3.3}
	}},
	use_texture_alpha = "clip",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	light_source = 12,
	groups = {choppy=2, dig_immediate=3, flammable=1, not_in_creative_inventory=1, attached_node=1, torch=1},
	drop = "moretorches:pinetorch",
	selection_box = {
		type = "wallmounted",
		wall_side = {-1/2, -1/2, -1/8, -1/8, 1/8, 1/8},
	},
	sounds = default.node_sound_wood_defaults(),
	floodable = true,
	on_flood = on_flood,
	on_rotate = false
})

minetest.register_node("moretorches:pinetorch_ceiling", {
	drawtype = "mesh",
	mesh = "torch_ceiling.obj",
	tiles = {{
		    name = "moretorches_pinetorch_on_floor_animated.png",
		    animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 3.3}
	}},
	use_texture_alpha = "clip",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	light_source = 12,
	groups = {choppy=2, dig_immediate=3, flammable=1, not_in_creative_inventory=1, attached_node=1, torch=1},
	drop = "moretorches:pinetorch",
	selection_box = {
		type = "wallmounted",
		wall_top = {-1/8, -1/16, -5/16, 1/8, 1/2, 1/8},
	},
	sounds = default.node_sound_wood_defaults(),
	floodable = true,
	on_flood = on_flood,
	on_rotate = false
})

minetest.register_node("moretorches:jungletorch", {
	description = S("Jungle Torch"),
	drawtype = "mesh",
	mesh = "torch_floor.obj",
	inventory_image = "moretorches_jungletorch_on_floor.png",
	wield_image = "moretorches_jungletorch_on_floor.png",
	tiles = {{
		    name = "moretorches_jungletorch_on_floor_animated.png",
		    animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 3.3}
	}},
	use_texture_alpha = "clip",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	liquids_pointable = false,
	light_source = 12,
	groups = {choppy=2, dig_immediate=3, flammable=1, attached_node=1, torch=1},
	drop = "moretorches:jungletorch",
	selection_box = {
		type = "wallmounted",
		wall_bottom = {-1/8, -1/2, -1/8, 1/8, 2/16, 1/8},
	},
	sounds = default.node_sound_wood_defaults(),
	on_place = function(itemstack, placer, pointed_thing)
		local under = pointed_thing.under
		local node = minetest.get_node(under)
		local def = minetest.registered_nodes[node.name]
		if def and def.on_rightclick and
			not (placer and placer:is_player() and
			placer:get_player_control().sneak) then
			return def.on_rightclick(under, node, placer, itemstack,
				pointed_thing) or itemstack
		end

		local above = pointed_thing.above
		local wdir = minetest.dir_to_wallmounted(vector.subtract(under, above))
		local fakestack = itemstack
		if wdir == 0 then
			fakestack:set_name("moretorches:jungletorch_ceiling")
		elseif wdir == 1 then
			fakestack:set_name("moretorches:jungletorch")
		else
			fakestack:set_name("moretorches:jungletorch_wall")
		end

		itemstack = minetest.item_place(fakestack, placer, pointed_thing, wdir)
		itemstack:set_name("moretorches:jungletorch")

		return itemstack
	end,
	floodable = true,
	on_flood = on_flood,
	on_rotate = false
})

minetest.register_node("moretorches:jungletorch_wall", {
	drawtype = "mesh",
	mesh = "torch_wall.obj",
	tiles = {{
		    name = "moretorches_jungletorch_on_floor_animated.png",
		    animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 3.3}
	}},
	use_texture_alpha = "clip",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	light_source = 12,
	groups = {choppy=2, dig_immediate=3, flammable=1, not_in_creative_inventory=1, attached_node=1, torch=1},
	drop = "moretorches:jungletorch",
	selection_box = {
		type = "wallmounted",
		wall_side = {-1/2, -1/2, -1/8, -1/8, 1/8, 1/8},
	},
	sounds = default.node_sound_wood_defaults(),
	floodable = true,
	on_flood = on_flood,
	on_rotate = false
})

minetest.register_node("moretorches:jungletorch_ceiling", {
	drawtype = "mesh",
	mesh = "torch_ceiling.obj",
	tiles = {{
		    name = "moretorches_jungletorch_on_floor_animated.png",
		    animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 3.3}
	}},
	use_texture_alpha = "clip",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	light_source = 12,
	groups = {choppy=2, dig_immediate=3, flammable=1, not_in_creative_inventory=1, attached_node=1, torch=1},
	drop = "moretorches:jungletorch",
	selection_box = {
		type = "wallmounted",
		wall_top = {-1/8, -1/16, -5/16, 1/8, 1/2, 1/8},
	},
	sounds = default.node_sound_wood_defaults(),
	floodable = true,
	on_flood = on_flood,
	on_rotate = false
})