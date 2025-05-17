function gml_func_copy()
{
	var l_to, l_from, l_note, l_sig, l_pos;
	
	l_to = argument[0];
	l_from = argument[1];
	
	if (argument_count > 2)
	    l_note = argument[2];
	else
	    l_note = undefined;
	
	if (!ds_map_exists(global.g_gml_func_script, l_from))
	    show_error("Can't find " + l_from, 0);
	
	if (l_note != undefined)
	{
	    gml_note_add("// " + gml_std_Std_string(l_note));
	    l_sig = ds_map_find_value(global.g_gml_func_sig, l_from);
	    l_pos = gml_std_string_pos_ext(l_sig, l_from);
	    l_sig = gml_std_string_substring(l_sig, 0, l_pos) + l_to + gml_std_string_substring(l_sig, l_pos + string_length(l_from));
	    ds_list_add(global.g_gml_sig_list, l_sig);
	}
	
	ds_map_set(global.g_gml_func_eval, l_to, ds_map_find_value(global.g_gml_func_eval, l_from));
	ds_map_set(global.g_gml_func_args, l_to, ds_map_find_value(global.g_gml_func_args, l_from));
	ds_map_set(global.g_gml_func_rest, l_to, ds_map_find_value(global.g_gml_func_rest, l_from));
	ds_map_set(global.g_gml_func_arg0, l_to, ds_map_find_value(global.g_gml_func_arg0, l_from));
	ds_map_set(global.g_gml_func_arg1, l_to, ds_map_find_value(global.g_gml_func_arg1, l_from));
	ds_map_set(global.g_gml_func_script, l_to, ds_map_find_value(global.g_gml_func_script, l_from));
	ds_map_set(global.g_gml_func_sig, l_to, ds_map_find_value(global.g_gml_func_sig, l_from));
}
