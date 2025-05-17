function gml_seek_fields_proc()
{
	var l_q, l__g, l_s, l_x, l_d;
	
	l_q = argument[0];
	l__g = l_q;
	
	if (l__g[0] == 38)
	{
	    l_s = l__g[3];
	    l_x = l__g[2];
	    l_d = l__g[1];
	    
	    if (l_x[0] == 10)
	        gml_std_haxe_enum_tools_set(l_q, [35, l_d, l_s]);
	}
	
	return gml_node_seek(l_q, argument[1], global.g_gml_program_seek_func);
}
