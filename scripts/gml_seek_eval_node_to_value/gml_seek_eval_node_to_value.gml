function gml_seek_eval_node_to_value()
{
	var l__g;
	
	l__g = argument[0];
	
	switch (l__g[0])
	{
	    case 0:
	        return undefined;
	    
	    case 1:
	        return l__g[2];
	    
	    case 2:
	        return l__g[2];
	    
	    case 13:
	        return ds_map_find_value(global.g_gml_const_val, l__g[2]);
	    
	    case 12:
	        return l__g[3];
	    
	    default:
	        return global.g_gml_seek_eval_invalid_value;
	}
}
