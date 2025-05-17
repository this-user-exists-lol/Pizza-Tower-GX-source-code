function gml_program_seek()
{
	var this, l_f, l_st, l_w, l_m, l_n, l_i, l_scr, l_scrNode;
	
	this = argument[0];
	l_f = argument[1];
	
	if (argument_count > 2)
	    l_st = argument[2];
	else
	    l_st = 0;
	
	if (l_st)
	    l_w = ds_list_create();
	else
	    l_w = undefined;
	
	global.g_gml_program_seek_func = l_f;
	l_m = this[2];
	l_n = array_length_1d(l_m);
	l_i = 0;
	
	while (l_i < l_n)
	{
	    l_scr = l_m[l_i];
	    global.g_gml_program_seek_script = l_scr;
	    l_scrNode = l_scr[4];
	    
	    if (l_scrNode != undefined && script_execute(l_f, l_scrNode, l_w))
	        break;
	    else
	        l_i++;
	}
	
	global.g_gml_program_seek_script = undefined;
	global.g_gml_program_seek_func = undefined;
	
	if (l_st)
	    ds_list_destroy(l_w);
	
	return l_i < l_n;
}
