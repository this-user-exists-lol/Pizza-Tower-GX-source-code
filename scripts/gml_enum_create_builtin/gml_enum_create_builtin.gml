function gml_enum_create_builtin()
{
	var l_name, l_e;
	
	l_name = argument[0];
	l_e = gml_enum_create(l_name, gml_pos_create(gml_source_create("built-in", ""), 0, 0));
	ds_map_set(global.g_gml_enum_map, l_name, l_e);
	return l_e;
}
