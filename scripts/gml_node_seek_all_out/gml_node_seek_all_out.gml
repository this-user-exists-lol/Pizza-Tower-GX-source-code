function gml_node_seek_all_out()
{
	var l_q, l_st, l_c, l_si, l_par, l__g, l_w, l_i, l_c1, l_c3, l_c5, l_c4, l_c6, l_c7, l_c2, l_c8;
	
	l_q = argument[0];
	l_st = argument[1];
	l_c = argument[2];
	l_si = argument[3];
	l_par = ds_list_find_value(l_st, l_si);
	
	if (l_par == undefined)
	    return 0;
	
	l__g = l_par;
	
	switch (l__g[0])
	{
	    case 89:
	        l_w = l__g[2];
	        l_i = array_length_1d(l_w);
	        
	        while (--l_i >= 0)
	        {
	            if (l_w[l_i] == l_q)
	                break;
	        }
	        
	        while (--l_i >= 0)
	        {
	            if (script_execute(l_c, l_w[l_i], undefined))
	                return 1;
	        }
	        
	        break;
	    
	    case 90:
	        l_c1 = l__g[2];
	        
	        if (l_c1 != l_q && script_execute(l_c, l_c1, undefined))
	            return 1;
	        
	        break;
	    
	    case 95:
	        l_c3 = l__g[2];
	        
	        if (l_c3 != l_q && script_execute(l_c, l_c3, undefined))
	            return 1;
	        
	        break;
	    
	    case 97:
	        l_c5 = l__g[2];
	        
	        if (l_c5 != l_q && script_execute(l_c, l_c5, undefined))
	            return 1;
	        
	        break;
	    
	    case 96:
	        l_c4 = l__g[2];
	        
	        if (l_c4 != l_q && script_execute(l_c, l_c4, undefined))
	            return 1;
	        
	        break;
	    
	    case 98:
	        l_c6 = l__g[2];
	        
	        if (l_c6 != l_q && script_execute(l_c, l_c6, undefined))
	            return 1;
	        
	        break;
	    
	    case 99:
	        l_c7 = l__g[2];
	        
	        if (l_c7 != l_q && script_execute(l_c, l_c7, undefined))
	            return 1;
	        
	        break;
	    
	    case 92:
	        l_c2 = l__g[2];
	        
	        if (l_c2 != l_q && script_execute(l_c, l_c2, undefined))
	            return 1;
	        
	        break;
	    
	    case 100:
	        l_c8 = l__g[2];
	        
	        if (l_c8 != l_q && script_execute(l_c, l_c8, undefined))
	            return 1;
	        
	        break;
	    
	    case 109:
	        break;
	    
	    case 108:
	        break;
	    
	    case 110:
	        break;
	    
	    case 112:
	        break;
	    
	    case 113:
	        break;
	    
	    default:
	        show_error("Can't seekAllOut over " + gml_pos_to_string(l_par[1]) + " " + global.g_gml_node_names[l_par[0]], 0);
	}
	
	return gml_node_seek_all_out(l_par, l_st, l_c, l_si + 1);
}
