function gml_object_field()
{
	var l_object1, l_field, l_func, l_fds, l_children, l_i, l__g1, l_child, l_m;
	
	l_object1 = argument[0];
	l_field = argument[1];
	l_func = argument[2];
	l_fds = global.g_gml_object_fields[l_object1];
	
	if (!ds_map_exists(l_fds, l_field))
	    ds_list_add(global.g_gml_object_field_names[l_object1], l_field);
	
	ds_map_set(l_fds, l_field, l_func);
	l_children = global.g_gml_object_children[l_object1];
	l_i = 0;
	l__g1 = array_length_1d(l_children);
	
	while (l_i < l__g1)
	{
	    l_child = l_children[l_i];
	    l_m = global.g_gml_object_fields[l_child];
	    
	    if (!ds_map_exists(l_m, l_field))
	    {
	        ds_map_set(l_m, l_field, l_func);
	        ds_list_add(global.g_gml_object_field_names[l_child], l_field);
	    }
	    
	    l_i++;
	}
}
