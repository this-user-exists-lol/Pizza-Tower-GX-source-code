function gml_seek_enum_fields_proc()
{
	var l_q, l__g, l_f, l_x, l_d, l__g1, l_s, l_e, l_c;
	
	l_q = argument[0];
	
	if (gml_node_seek(l_q, argument[1], global.g_gml_program_seek_func))
	    return 1;
	
	l__g = l_q;
	
	if (l__g[0] == 38)
	{
	    l_f = l__g[3];
	    l_x = l__g[2];
	    l_d = l__g[1];
	    l__g1 = l_x;
	    
	    if (l__g1[0] == 7)
	    {
	        l_s = l__g1[2];
	        l_e = ds_map_find_value(global.g_gml_program_seek_inst[5], l_s);
	        
	        if (l_e == undefined)
	            l_e = ds_map_find_value(global.g_gml_enum_map, l_s);
	        
	        if (l_e != undefined)
	        {
	            l_c = ds_map_find_value(l_e[4], l_f);
	            
	            if (l_c != undefined)
	            {
	                gml_std_haxe_enum_tools_set(l_q, [1, l_d, l_c[4], undefined]);
	                return 0;
	            }
	            else
	            {
	                return gml_program_error(global.g_gml_program_seek_inst, "Enum `" + l_s + "` does not contain field `" + l_f + "`", l_d);
	            }
	        }
	    }
	    
	    if (ds_map_exists(global.g_gml_var_flags, l_f))
	    {
	        if ((ds_map_find_value(global.g_gml_var_flags, l_f) & 4) == 0)
	            return gml_program_error(global.g_gml_program_seek_inst, "`" + l_f + "` is not an instance-specific variable.", l_d);
	    }
	}
	
	return 0;
}
