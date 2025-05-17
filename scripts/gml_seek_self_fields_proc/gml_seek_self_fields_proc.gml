function gml_seek_self_fields_proc()
{
	var l_q, l__g, l_s, l_d;
	
	l_q = argument[0];
	l__g = l_q;
	
	if (l__g[0] == 7)
	{
	    l_s = l__g[2];
	    l_d = l__g[1];
	    gml_std_haxe_enum_tools_set(l_q, [38, l_d, [8, l_d], l_s]);
	}
	
	return gml_node_seek(l_q, argument[1], global.g_gml_program_seek_func);
}
