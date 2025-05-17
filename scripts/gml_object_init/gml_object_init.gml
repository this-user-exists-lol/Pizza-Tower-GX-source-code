function gml_object_init()
{
	var l_n, l_names, l_fields, l_children, l_access, l_i, l_obj, l_par;
	
	for (l_n = 0; object_exists(l_n); l_n++)
	{
	}
	
	l_names = array_create(l_n, 0);
	l_fields = array_create(l_n, 0);
	l_children = array_create(l_n, 0);
	l_access = array_create(l_n, 0);
	
	for (l_i = 0; l_i < l_n; l_i++)
	{
	    array_set(l_children, l_i, array_create(0));
	    array_set(l_names, l_i, ds_list_create());
	    array_set(l_access, l_i, -1);
	    array_set(l_fields, l_i, ds_map_create());
	}
	
	for (l_i = 0; l_i < l_n; l_i++)
	{
	    l_obj = l_i;
	    l_par = object_get_parent(l_obj);
	    
	    while (object_exists(l_par))
	    {
	        gml_std_array_hx_push(l_children[l_par], l_obj);
	        l_par = object_get_parent(l_par);
	    }
	}
	
	global.g_gml_object_children = l_children;
	global.g_gml_object_access = l_access;
	global.g_gml_object_field_names = l_names;
	return l_fields;
}
