function gml_func_add()
{
	var l_s, l_p0, l_p1, l_argv, l_flags, l_arg0, l_rest, l_argc, l_arg1, l_argt, l_args1, l_tmap, l_i, l__g1, l_arg, l_pos, l_opt, l_type, l_tfun1, l_i1, l_inst, l_name1;
	
	l_s = argument[0];
	ds_list_add(global.g_gml_sig_list, l_s);
	l_p0 = gml_std_string_pos_ext(l_s, "(") + 1;
	l_p1 = gml_std_string_pos_ext(l_s, ")");
	l_argv = gml_std_string_hx_trim(gml_std_string_substring(l_s, l_p0, l_p1));
	l_flags = gml_std_string_substring(l_s, l_p1 + 1);
	l_arg0 = -1;
	l_rest = global.f_gml_type_check_any;
	
	if (l_argv == "")
	{
	    l_argc = 0;
	    l_arg1 = 0;
	    l_argt = array_create(0);
	}
	else
	{
	    l_args1 = gml_std_string_split(l_argv, ",");
	    l_argc = array_length_1d(l_args1);
	    l_arg1 = l_argc;
	    l_argt = array_create(l_argc);
	    l_tmap = global.g_gml_type_check_map;
	    l_i = 0;
	    l__g1 = l_argc;
	    
	    while (l_i < l__g1)
	    {
	        l_arg = l_args1[l_i];
	        l_pos = gml_std_string_pos_ext(l_arg, "=");
	        l_opt = 0;
	        
	        if (l_pos >= 0)
	        {
	            l_opt = 1;
	            l_arg = gml_std_string_substring(l_arg, 0, l_pos);
	        }
	        else if (gml_std_string_pos_ext(l_arg, "...") >= 0)
	        {
	            l_arg1 = 199;
	            l_argc = -1;
	            l_opt = 1;
	        }
	        
	        l_pos = gml_std_string_pos_ext(l_arg, ":");
	        
	        if (l_pos >= 0)
	        {
	            if (gml_std_string_pos_ext(gml_std_string_substring(l_arg, 0, l_pos), "?") >= 0)
	                l_opt = 1;
	            
	            l_type = gml_std_string_hx_trim(gml_std_string_substring(l_arg, l_pos + 1));
	            
	            if (ds_map_exists(l_tmap, l_type))
	            {
	                l_tfun1 = ds_map_find_value(l_tmap, l_type);
	                
	                if (gml_std_string_pos_ext(l_arg, "...") >= 0)
	                    l_rest = l_tfun1;
	                
	                array_set(l_argt, l_i, l_tfun1);
	            }
	            else
	            {
	                show_error("\"" + l_type + "\" is not a known type.", 0);
	            }
	        }
	        else
	        {
	            array_set(l_argt, l_i, global.f_gml_type_check_any);
	        }
	        
	        if (l_opt && l_arg0 < 0)
	            l_arg0 = l_i;
	        
	        l_i++;
	    }
	    
	    if (gml_std_string_pos_ext(l_argv, "...") >= 0 || gml_std_string_pos_ext(l_argv, "?") >= 0 || gml_std_string_pos_ext(l_argv, "=") >= 0)
	        l_argc = -1;
	}
	
	if (l_argc < 0)
	{
	    if (l_arg0 < 0)
	        l_arg0 = 0;
	}
	else
	{
	    l_arg1 = l_argc;
	    l_arg0 = l_argc;
	}
	
	l_i1 = 0;
	l_inst = 0;
	
	if (string_ord_at(l_s, l_i1 + 1) == 58)
	{
	    l_i1++;
	    l_inst++;
	}
	
	if (string_ord_at(l_s, l_i1 + 1) == 58)
	{
	    l_i1++;
	    l_inst++;
	}
	
	if (string_ord_at(l_s, l_i1 + 1) == 58)
	{
	    l_i1++;
	    l_inst++;
	}
	
	l_name1 = gml_parse_name(l_s, l_i1);
	
	if (l_inst > 0)
	    ds_map_set(global.g_gml_inst_data, l_name1, l_inst);
	
	ds_map_set(global.g_gml_func_eval, l_name1, gml_std_string_pos_ext(l_flags, "#") >= 0);
	ds_map_set(global.g_gml_func_args, l_name1, l_argt);
	ds_map_set(global.g_gml_func_rest, l_name1, l_rest);
	ds_map_set(global.g_gml_func_arg0, l_name1, l_arg0);
	ds_map_set(global.g_gml_func_arg1, l_name1, l_arg1);
	ds_map_set(global.g_gml_func_script, l_name1, argument[1]);
	ds_map_set(global.g_gml_func_sig, l_name1, l_s);
}
