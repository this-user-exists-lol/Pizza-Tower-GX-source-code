function live_bug24929_init()
{
	var l_map, l_i;
	
	l_map = ds_map_create();
	
	for (l_i = 0; script_exists(l_i); l_i++)
	    ds_map_set(l_map, script_get_name(l_i), l_i);
	
	return l_map;
}
