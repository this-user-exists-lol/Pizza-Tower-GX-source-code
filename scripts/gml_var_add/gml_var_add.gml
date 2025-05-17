function gml_var_add()
{
	var l_s, l_flags, l_type, l_pos, l_tstr, l_name;
	
	l_s = argument[0];
	ds_list_add(global.g_gml_sig_list, l_s);
	l_flags = 0;
	
	if (string_ord_at(l_s, 1) == 58)
	{
	    l_s = gml_std_string_substring(l_s, 1);
	    l_flags |= 4;
	}
	
	l_type = global.f_gml_type_check_any;
	l_pos = gml_std_string_pos_ext(l_s, ":");
	
	if (l_pos >= 0)
	{
	    l_tstr = gml_std_string_substring(l_s, l_pos + 1);
	    
	    if (ds_map_exists(global.g_gml_type_check_map, l_tstr))
	    {
	        l_type = ds_map_find_value(global.g_gml_type_check_map, l_tstr);
	        l_s = gml_std_string_substring(l_s, 0, l_pos);
	    }
	    else
	    {
	        show_error("`" + l_tstr + "` is not a known type.", 0);
	    }
	}
	
	l_name = gml_parse_name(l_s, 0);
	
	if (gml_std_string_pos_ext(l_s, "[") >= 0)
	    l_flags |= 2;
	
	if (gml_std_string_pos_ext(l_s, "*") >= 0)
	    l_flags |= 1;
	
	ds_map_set(global.g_gml_var_flags, l_name, l_flags);
	ds_map_set(global.g_gml_var_refs, l_name, argument[1]);
	ds_map_set(global.g_gml_var_types, l_name, l_type);
}
