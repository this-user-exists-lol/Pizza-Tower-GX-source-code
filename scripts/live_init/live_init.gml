function live_init()
{
	var l_url, l_url_last, l_srs, l_i, l_s;
	
	l_url = argument[1];
	
	if (!variable_global_exists("g_live_log_script"))
	    live_preinit();
	
	if (l_url != undefined)
	{
	    l_url_last = string_length(l_url) - 1;
	    
	    if (string_ord_at(l_url, l_url_last + 1) == 47)
	        l_url = gml_std_string_substring(l_url, 0, l_url_last);
	}
	
	live_log("Initializing...");
	global.g_live_request_rate = argument[0];
	global.g_live_request_url = l_url;
	global.g_live_request_password = argument[2];
	l_srs = asset_get_index("shader_replace_simple");
	
	if (l_srs != -1)
	    global.g_live_shader_updated = l_srs;
	
	live_log("Indexing assets...");
	
	for (l_i = 0; sprite_exists(l_i); l_i++)
	    gml_asset_add(sprite_get_name(l_i), l_i);
	
	for (l_i = 0; font_exists(l_i); l_i++)
	    gml_asset_add(font_get_name(l_i), l_i);
	
	for (l_i = 0; object_exists(l_i); l_i++)
	    gml_asset_add(object_get_name(l_i), l_i);
	
	for (l_i = 0; audio_exists(l_i); l_i++)
	    gml_asset_add(audio_get_name(l_i), l_i);
	
	for (l_i = 0; room_exists(l_i); l_i++)
	    gml_asset_add(room_get_name(l_i), l_i);
	
	for (l_i = 0; path_exists(l_i); l_i++)
	    gml_asset_add(path_get_name(l_i), l_i);
	
	for (l_i = 0; timeline_exists(l_i); l_i++)
	    gml_asset_add(timeline_get_name(l_i), l_i);
	
	for (l_i = 0; l_i < 256; l_i++)
	{
	    l_s = audio_group_name(l_i);
	    
	    if (l_s == "<undefined>" || l_s == "" || l_s == undefined)
	        break;
	    
	    gml_asset_add(l_s, l_i);
	}
	
	if (l_url == undefined)
	{
	    for (l_i = 0; script_exists(l_i); l_i++)
	    {
	        l_s = script_get_name(l_i);
	        gml_func_add(l_s + "(...)", l_i);
	        ds_map_set(global.g_gml_func_script_id, l_s, l_i);
	    }
	}
}
