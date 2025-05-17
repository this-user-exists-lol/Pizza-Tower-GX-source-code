function gml_seek_alarms_proc()
{
	var l_q, l__g, l_r;
	
	l_q = argument[0];
	l__g = l_q;
	
	switch (l__g[0])
	{
	    case 63:
	        l_r = gml_seek_alarms_check(l__g[2]);
	        
	        if (l_r != undefined)
	            gml_std_haxe_enum_tools_set(l_q, [50, l__g[1], l_r, l__g[3]]);
	        
	        break;
	    
	    case 53:
	        l_r = gml_seek_alarms_check(l__g[2]);
	        
	        if (l_r != undefined)
	            gml_std_haxe_enum_tools_set(l_q, [50, l__g[1], l_r, l__g[3]]);
	        
	        break;
	}
	
	return gml_node_seek(l_q, argument[1], global.g_gml_program_seek_func);
}
