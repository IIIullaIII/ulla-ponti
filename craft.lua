
local lastra_list = {
	{ "lastra_della_giungla", "junglewood"},
	{ "lastra_di_legno", "wood"},
    { "lastra_di_pietra", "stone"},
	--{ "lastra_del_deserto", "sandstone_brick"},
	{ "lastra_di_vetro", "glass"},
	--{ "lastra_di_ferro", "steel_block"},
	--{ "lastra_di_oro", "gold_block"},
}

for i in ipairs(lastra_list) do
	local lastradesc = lastra_list[i][1]
	local imm = lastra_list[i][2]
 --------------------------------------------------------------------------------------------------------------------------------
 minetest.register_craft({
		output = "ponti:la_"..lastradesc.."_craft 9 ", 
		recipe = {			
			{"","",""},
			{"","default:"..imm.."" ,""},
			{"","",""}		
			
		}
	})
 

end
