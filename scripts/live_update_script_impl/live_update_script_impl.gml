function live_update_script_impl()
{
	var l_name, l_ident, l_found, l_macros, l_enums, l_acc, l_data, l_source, l_tokens, l_tokensLen, l_tokensLen1, l_tokensPos, l_tk, l_id, l_src, l__g21, l__g31, l_srci, l_srcs, l_pg;
	
	l_name = argument[0];
	l_ident = argument[1];
	l_found = global.g_live_async_http_1_found;
	l_macros = global.g_live_live_macros;
	l_enums = global.g_live_live_enums;
	l_acc = global.g_live_async_http_1_acc;
	l_data = ds_map_find_value(global.g_live_live_map, l_ident);
	
	if (l_data == undefined)
	{
	    l_data = array_create(2);
	    l_data[1, 0] = "LiveData";
	    l_data[0] = undefined;
	    l_data[1] = l_ident;
	    ds_map_set(global.g_live_live_map, l_ident, l_data);
	}
	
	l_source = gml_source_create(l_name, argument[2], l_name);
	l_tokens = gml_parser_run(l_source);
	
	if (l_tokens == undefined)
	{
	    live_log("Error in " + l_name + ":");
	    live_log(global.g_gml_parser_error_text);
	    return 0;
	}
	
	ds_map_clear(l_found);
	ds_list_clear(l_acc);
	
	if (global.g_live_live_globals != undefined)
	    ds_list_add(l_acc, global.g_live_live_globals);
	
	array_set(l_source, 6, l_tokens);
	l_tokensLen = array_length_1d(l_tokens);
	l_tokensLen1 = l_tokensLen - 1;
	l_tokensPos = -1;
	
	while (++l_tokensPos < l_tokensLen)
	{
	    l_tk = l_tokens[l_tokensPos];
	    
	    if (l_tk[0] == 10)
	        l_id = l_tk[2];
	    else
	        continue;
	    
	    if (ds_map_exists(l_found, l_id))
	        continue;
	    
	    l_src = ds_map_find_value(l_macros, l_id);
	    
	    if (l_src != undefined)
	    {
	        ds_list_add(l_acc, l_src);
	        ds_map_set(l_found, l_id, 1);
	        continue;
	    }
	    
	    l_src = ds_map_find_value(l_enums, l_id);
	    
	    if (l_src != undefined)
	    {
	        if (l_tokensPos > 0)
	        {
	            if (gml_std_haxe_boot_wget(l_tokens[l_tokensPos - 1], 0) == 5)
	                continue;
	        }
	        
	        if (l_tokensPos < l_tokensLen1)
	        {
	            l__g21 = l_tokens[l_tokensPos + 1];
	            
	            if (l__g21[0] == 5)
	                l__g31 = l__g21[1];
	            else
	                continue;
	        }
	        
	        ds_list_add(l_acc, l_src);
	        ds_map_set(l_found, l_id, 1);
	        continue;
	    }
	    
	    ds_map_set(l_found, l_id, 1);
	}
	
	ds_list_add(l_acc, l_source);
	l_srci = ds_list_size(l_acc);
	l_srcs = array_create(l_srci, 0);
	
	while (--l_srci >= 0)
	    array_set(l_srcs, l_srci, ds_list_find_value(l_acc, l_srci));
	
	l_pg = gml_program_create(l_srcs);
	
	if (!l_pg[13])
	{
	    live_log("Error in " + l_name + ":");
	    live_log(l_pg[11]);
	    gml_program_destroy(l_pg);
	    return 0;
	}
	
	if (l_pg[11] != undefined)
	{
	    live_log("Warning in " + l_name + ":");
	    live_log(l_pg[11]);
	}
	
	array_set(l_pg, 14, l_name);
	live_log("Reloaded " + l_name + ".");
	
	if (l_data[0] != undefined)
	    gml_program_destroy(l_data[0]);
	
	array_set(l_data, 0, l_pg);
}
