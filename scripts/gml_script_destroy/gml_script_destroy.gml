function gml_script_destroy()
{
	var this, l_this2, l_i, l__g1, l_q;
	
	this = argument[0];
	ds_map_destroy(this[6]);
	
	if (this[10] != undefined)
	{
	    l_this2 = this[10];
	    l_i = 0;
	    l__g1 = ds_list_size(l_this2);
	    
	    while (l_i < l__g1)
	    {
	        l_q = ds_list_find_value(l_this2, l_i);
	        
	        if (l_q[0] == 58)
	            ds_map_destroy(l_q[2]);
	        
	        l_i++;
	    }
	    
	    ds_list_destroy(l_this2);
	}
}
