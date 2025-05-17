function live_async_http_1()
{
	var l_map, l_list, l_n, l_i, l_fmap, l_ident, l_code, l_name, l_sup, l_spr, l_sx, l_sy, l_frames, l_out, l_tmp, l_i1, l__g1, l_tb, l_ts, l_sup1, l_ru, l_rq;
	
	l_map = argument[0];
	l_list = ds_map_find_value(l_map, "files");
	l_n = ds_list_size(l_list);
	l_i = -1;
	
	while (++l_i < l_n)
	{
	    l_fmap = ds_list_find_value(l_list, l_i);
	    l_ident = ds_map_find_value(l_fmap, "ident");
	    l_code = ds_map_find_value(l_fmap, "code");
	    l_name = ds_map_find_value(l_fmap, "name");
	    script_execute(global.g_live_update_script, l_name, l_ident, l_code);
	}
	
	l_list = ds_map_find_value(l_map, "sprites");
	
	if (l_list != undefined)
	{
	    l_n = ds_list_size(l_list);
	    l_i = -1;
	    
	    while (++l_i < l_n)
	    {
	        l_sup = ds_list_find_value(l_list, l_i);
	        l_name = ds_map_find_value(l_sup, "name");
	        l_spr = asset_get_index(l_name);
	        
	        if (l_spr == -1)
	        {
	            live_log("Error: can't find sprite " + l_name + " for reload.");
	            continue;
	        }
	        
	        l_sx = ds_map_find_value(l_sup, "xorig");
	        l_sy = ds_map_find_value(l_sup, "yorig");
	        l_frames = ds_map_find_value(l_sup, "frames");
	        l_out = -1;
	        l_tmp = global.g_live_temp_path + ".png";
	        l_i1 = 0;
	        l__g1 = ds_list_size(l_frames);
	        
	        while (l_i1 < l__g1)
	        {
	            l_tb = buffer_base64_decode(ds_list_find_value(l_frames, l_i1));
	            
	            if (l_tb == -1)
	            {
	                live_log("Error: couldn't decode base64 for " + l_name + ".");
	            }
	            else
	            {
	                buffer_save(l_tb, l_tmp);
	                buffer_delete(l_tb);
	                l_ts = sprite_add(l_tmp, 1, false, false, l_sx, l_sy);
	                
	                if (l_ts == -1)
	                    live_log("Error: couldn't load image " + string(l_i1) + " for " + l_name + ".");
	                else if (l_i1 != 0)
	                    sprite_merge(l_out, l_ts);
	                else
	                    l_out = l_ts;
	            }
	            
	            l_i1++;
	        }
	        
	        if (l_out != -1)
	        {
	            sprite_assign(l_spr, l_out);
	            sprite_collision_mask(l_spr, ds_map_find_value(l_sup, "sepMasks"), ds_map_find_value(l_sup, "bboxMode"), ds_map_find_value(l_sup, "bboxLeft"), ds_map_find_value(l_sup, "bboxTop"), ds_map_find_value(l_sup, "bboxRight"), ds_map_find_value(l_sup, "bboxBottom"), ds_map_find_value(l_sup, "colKind"), ds_map_find_value(l_sup, "colTolerance"));
	            sprite_delete(l_out);
	            live_log("Reloaded " + l_name + ".");
	        }
	        
	        file_delete(l_tmp);
	    }
	}
	
	l_list = ds_map_find_value(l_map, "shadersUpd");
	
	if (l_list != undefined)
	{
	    l_n = ds_list_size(l_list);
	    l_i = -1;
	    
	    while (++l_i < l_n)
	    {
	        l_sup1 = ds_list_find_value(l_list, l_i);
	        l_name = ds_map_find_value(l_sup1, "name");
	        script_execute(global.g_live_shader_updated, asset_get_index(l_name), ds_map_find_value(l_sup1, "vertex"), ds_map_find_value(l_sup1, "fragment"));
	        live_log("Reloaded " + l_name + ".");
	    }
	}
	
	l_list = ds_map_find_value(l_map, "rooms");
	
	if (l_list != undefined)
	{
	    l_n = ds_list_size(l_list);
	    l_i = -1;
	    
	    while (++l_i < l_n)
	    {
	        l_ru = ds_list_find_value(l_list, l_i);
	        l_rq = asset_get_index(ds_map_find_value(l_ru, "name"));
	        ds_map_set(global.g_live_live_room_data, l_rq, ds_map_find_value(l_ru, "json"));
	        script_execute(global.g_live_room_updated, l_rq);
	    }
	}
}
