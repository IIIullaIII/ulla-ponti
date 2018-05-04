local ponte_list = {
	{ "ponte_della_giungla", "junglewood"},
	{ "ponte_di_legno", "wood"},
    { "ponte_di_pietra", "stone"},
	{ "ponte_del_deserto", "sandstone_brick"},
	{ "ponte_di_vetro", "glass"},
	{ "ponte_di_ferro", "steel_block"},
	{ "ponte_di_oro", "gold_block"},
}

for i in ipairs(ponte_list) do
	local pontedesc = ponte_list[i][1]
	local tex = ponte_list[i][2]
 

	----------------------------------------------------------------------------------------------------------------------------
	 minetest.register_node("ponti:ponte_aperto_"..tex.."", {
	    description = pontedesc.."",
		drawtype = "nodebox",
	paramtype = "light",
	  node_box = {  
	       type = "fixed",
	        fixed =  {-1.5,-0.5,-1.5, 1.5,-0.3125,1.5  },
	             },
	      tiles = {"default_"..tex..".png"},
--inventory_image = {pontedesc..".png"},
  --  wield_image = {pontedesc..".png"},
	    paramtype = "light",
	    paramtype2 = "facedir",
	    sunlight_propagates = true,
	    walkable = true,
	   	    collision_box = {  
	       type = "fixed",
	      fixed =  {-1.5,-0.5,-1.5, 1.5,-0.3125,1.5  },
	     },
	    selection_box = {
	        type = "fixed",
	        fixed =  {-1.5,-0.5,-1.5, 1.5,-0.3125,1.5},  
	        },
		groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,mesecon_effector_on = 1,mesecon=1, not_in_creative_inventory=0},
		
	
 		    drop = "ponti:ponte_aperto_"..tex.."",      
		mesecons = {effector = {
	   action_on = function (pos, node)
			minetest.swap_node(pos, {name = "ponti:ponte_aperto_2_"..tex.."", param2 = node.param2})
		end
	}},  
			on_rightclick = function(pos, node, clicker)
	        node.name = "ponti:ponte_aperto_2_"..tex..""
	        minetest.swap_node(pos, node)

	end , 
	   
	})
		
	----------------------------------------------------------------------------------------------------------------------------
	

minetest.register_node("ponti:ponte_aperto_2_"..tex.."", {
	    description = pontedesc.."_2",
	    drawtype = "mesh",
		mesh = "ponte_aperto_2.obj",
	    tiles = {"default_"..tex..".png",
	    },
        paramtype = "light",
	    paramtype2 = "facedir",
	    sunlight_propagates = true,
	    walkable = false,
	    selection_box = {
	        type = "fixed",
	        fixed = { -1.5,-0.5,-1.5,1.5,0.35,-1.3125},
	    },
		groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,mesecon_effector_on = 1,mesecon=1, not_in_creative_inventory=1},
		mesecons = {effector = {
			action_on = function (pos, node)
			minetest.swap_node(pos, {name = "ponti:ponte_aperto_3_"..tex.."", param2 = node.param2})
		end
	}},
		
		drop = "ponti:ponte_aperto_"..tex,
		on_rightclick = function(pos, node, clicker)
	        node.name = "ponti:ponte_aperto_3_"..tex..""
	        minetest.swap_node(pos, node)
	    end,
	})
	---------------------------------------------------------------------------------------------------------
minetest.register_node("ponti:ponte_aperto_3_"..tex.."", {
	    description = pontedesc.."_3",
	    drawtype = "mesh",
		mesh = "ponte_aperto_3.obj",
	    tiles = {"default_"..tex..".png",
	    },	    
	    paramtype = "light",
	    paramtype2 = "facedir",
	    sunlight_propagates = true,
	    walkable = false,
	    selection_box = {
	        type = "fixed",
	        fixed = {-1.5,-0.5,-1.5,1.5,0.35,-1.3125},
	    },
		groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,mesecon_effector_on = 1,mesecon=1, not_in_creative_inventory=1},
		mesecons = {effector = {
		action_on = function (pos, node)
			minetest.swap_node(pos, {name = "ponti:ponte_chiuso_4_"..tex.."", param2 = node.param2})
		end
	}},
	        drop = "ponti:ponte_aperto_"..tex.."",        
		on_rightclick = function(pos, node, clicker)
	        node.name = "ponti:ponte_chiuso_4_"..tex..""
	        minetest.swap_node(pos, node)
	    end,
	})
minetest.register_node("ponti:ponte_chiuso_4_"..tex.."", {
	    description = pontedesc.."_4",
		drawtype = "nodebox",
		  node_box = {  
	       type = "fixed",
	        fixed = {-1.5,-0.5,-1.5,1.5,2.5,-1.3125},
	                 },
	    tiles = {"default_"..tex..".png",
	    },
            paramtype = "light",
	   	    paramtype2 = "facedir",
	    sunlight_propagates = true,
	    walkable = false,
	    selection_box = {
	        type = "fixed",
	        fixed = {-1.5,-0.5,-1.5,1.5,2.5,-1.3125},
	    },
	    collision_box = {  
	       type = "fixed",
	        fixed =  {-1.5,-0,-1.5,1.5,1.5,-1.3125},
	     },
		groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,mesecon_effector_on = 1,mesecon=1, not_in_creative_inventory=1},
		mesecons = {effector = {
		action_on = function (pos, node)
			minetest.swap_node(pos, {name = "ponti:ponte_aperto_5_"..tex.."", param2 = node.param2})
		end
	}},
		drop = "ponti:ponte_aperto_"..tex,
		on_rightclick = function(pos, node, clicker)
	        node.name = "ponti:ponte_aperto_5_"..tex..""
	        minetest.swap_node(pos, node)
	    end,
	})
	----------------------------------------------------------------------------------------------------
	
minetest.register_node("ponti:ponte_aperto_5_"..tex.."", {
	    description = pontedesc.."_3",
	    drawtype = "mesh",
		mesh = "ponte_aperto_3.obj",
	    tiles = {"default_"..tex..".png",
	    },	    
        paramtype = "light",
	    paramtype2 = "facedir",
	    sunlight_propagates = true,
	    walkable = false,
	    selection_box = {
	        type = "fixed",
	        fixed = {-1.5,-0.5,-1.5,1.5,0.35,-1.3125},
	    },
		groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,mesecon_effector_on = 1,mesecon=1, not_in_creative_inventory=1},
		mesecons = {effector = {
		action_on = function (pos, node)
			minetest.swap_node(pos, {name = "ponti:ponte_aperto_6_"..tex.."", param2 = node.param2})
		end
	}},
		drop = "ponti:ponte_aperto_"..tex.."",        
		on_rightclick = function(pos, node, clicker)
	        node.name = "ponti:ponte_aperto_6_"..tex..""
	        minetest.swap_node(pos, node)
	    end,
	})
minetest.register_node("ponti:ponte_aperto_6_"..tex.."", {
	    description = pontedesc.."_6",
	    drawtype = "mesh",
		mesh = "ponte_aperto_2.obj",
	    tiles = {"default_"..tex..".png",
	    },
        paramtype = "light",
	    paramtype2 = "facedir",
	    sunlight_propagates = true,
	    walkable = false,
	    selection_box = {
	        type = "fixed",
	        fixed = {-1.5,-0.5,-1.5,1.5,0.35,-1.3125},
	    },
		groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,mesecon_effector_on = 1,mesecon=1 ,not_in_creative_inventory=1},
		mesecons = {effector = {
		action_on = function (pos, node)
			minetest.swap_node(pos, {name = "ponti:ponte_aperto_"..tex.."", param2 = node.param2})
		end
	}},
				drop = "ponti:ponte_aperto_"..tex,
		on_rightclick = function(pos, node, clicker)
	        node.name = "ponti:ponte_aperto_"..tex..""
	        minetest.swap_node(pos, node)
	        end,
	})
	------------------------------------------------------------------------------------------------------------------------------------------
	
minetest.register_node("ponti:ponte_conduttore_"..tex.."_off", {
	    description = pontedesc.."_conduttore_off",
	   	drawtype = "nodebox",
		  node_box = {  
	       type = "fixed",
	        fixed = {-0.5,-0.5,0.5,0.5,0.5,0.3125},
	                 },
	    tiles = {"default_"..tex..".png",
	    },
      	        paramtype = "light",
	   	    paramtype2 = "facedir",
	    sunlight_propagates = true,
	    walkable = false,
	    selection_box = {
	        type = "fixed",
	        fixed = {-0.5,-0.5,0.5,0.5,0.5,0.3125},
	    },
	   
		groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,mesecon_conductor_off = 1, not_in_creative_inventory=0},
		mesecons = {conductor = {
		state = mesecon.state.off,
		onstate = "ponti:ponte_conduttore_"..tex.."_on",
		rules = {
	{x = 1, y = 0, z = 0},
	{x =-1, y = 0, z = 0},
	{x = 0, y = 1, z = 0},
	{x = 0, y =-1, z = 0},
	{x = 0, y = 0, z = 1},
	{x = 0, y = 0, z =-1},
}
	}},
	drop = "ponti:ponte_conduttore_"..tex.."_off",
	})
--------------------------------------------------------------------------
	minetest.register_node("ponti:ponte_conduttore_"..tex.."_on", {
	    description = pontedesc.."_conduttore_on",
	   	drawtype = "nodebox",
		  node_box = {  
	       type = "fixed",
	        fixed = {-0.5,-0.5,0.5,0.5,0.5,0.3125},
	                 },
	    tiles = {"default_"..tex..".png"},
            paramtype = "light",
	   	    paramtype2 = "facedir",
	   	    light_source = 5,
	    sunlight_propagates = true,
	    walkable = false,
	    selection_box = {
	        type = "fixed",
	        fixed = {-0.5,-0.5,0.5,0.5,0.5,0.3125},
	                    },	    
		groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,mesecon_conductor_on = 1, not_in_creative_inventory=1},
		mesecons = {conductor = {
		state = mesecon.state.on,
		offstate = "ponti:ponte_conduttore_"..tex.."_off",
		rules = {
	{x = 1, y = 0, z = 0},
	{x =-1, y = 0, z = 0},
	{x = 0, y = 1, z = 0},
	{x = 0, y =-1, z = 0},
	{x = 0, y = 0, z = 1},
	{x = 0, y = 0, z =-1},
}
	}},
	drop = "ponti:ponte_conduttore_"..tex.."_off",
	})

--------------------------------------------------------------------------------- minetest.register_node("ponti:ponte_aperto_"..tex.."", {
	 minetest.register_node("ponti:ponte_aperto_fast_"..tex.."", {
	    description = pontedesc.."_fast",
		drawtype = "nodebox",
	paramtype = "light",
	  node_box = {  
	       type = "fixed",
	        fixed =  {-1.5,-0.5,-1.5, 1.5,-0.3125,1.5  },
	             },
	      tiles = {"default_"..tex..".png"},
--inventory_image = {pontedesc..".png"},
  --  wield_image = {pontedesc..".png"},
	    paramtype = "light",
	    paramtype2 = "facedir",
	    sunlight_propagates = true,
	    walkable = true,
	   	    collision_box = {  
	       type = "fixed",
	      fixed =  {-1.5,-0.5,-1.5, 1.5,-0.3125,1.5  },
	     },
	    selection_box = {
	        type = "fixed",
	        fixed =  {-1.5,-0.5,-1.5, 1.5,-0.3125,1.5},  
	        },
		groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,mesecon_effector_on = 1,mesecon=1, not_in_creative_inventory=0},
		
	
 		    drop = "ponti:ponte_aperto_"..tex.."",      
		mesecons = {effector = {
	   action_on = function (pos, node)
			minetest.swap_node(pos, {name = "ponti:ponte_chiuso_fast_"..tex.."", param2 = node.param2})
		end
	}},  
			on_rightclick = function(pos, node, clicker)
	        node.name = "ponti:ponte_chiuso_fast_"..tex..""
	        minetest.swap_node(pos, node)

	end , 
	   
	})
	minetest.register_node("ponti:ponte_chiuso_fast_"..tex.."", {
	    description = pontedesc.."_chiuso_fast",
		drawtype = "nodebox",
		  node_box = {  
	       type = "fixed",
	        fixed = {-1.5,-0.5,-1.5,1.5,2.5,-1.3125},
	                 },
	    tiles = {"default_"..tex..".png",
	    },
            paramtype = "light",
	   	    paramtype2 = "facedir",
	    sunlight_propagates = true,
	    walkable = false,
	    selection_box = {
	        type = "fixed",
	        fixed = {-1.5,-0.5,-1.5,1.5,2.5,-1.3125},
	    },
	    collision_box = {  
	       type = "fixed",
	        fixed =  {-1.5,-0,-1.5,1.5,1.5,-1.3125},
	     },
		groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,mesecon_effector_on = 1,mesecon=1, not_in_creative_inventory=1},
		mesecons = {effector = {
		action_on = function (pos, node)
			minetest.swap_node(pos, {name = "ponti:ponte_aperto_fast_"..tex.."", param2 = node.param2})
		end
	}},
		drop = "ponti:ponte_aperto_fast_"..tex,
		on_rightclick = function(pos, node, clicker)
	        node.name = "ponti:ponte_aperto_fast_"..tex..""
	        minetest.swap_node(pos, node)
	    end,
	})
		
end
