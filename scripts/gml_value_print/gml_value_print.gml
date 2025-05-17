function gml_value_print()
{
	var l_r;
	
	ds_map_clear(global.g_gml_value_print_refs);
	global.g_gml_value_print_num = 0;
	l_r = gml_value_print_rec(argument[0], 0);
	ds_map_clear(global.g_gml_value_print_refs);
	return l_r;
}
