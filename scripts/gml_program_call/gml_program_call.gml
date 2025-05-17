function gml_program_call()
{
	var this, l_name, l_argc, l_args2, l_i, l__g1, l_copy, l_scr, l_locals, l_th;
	
	this = argument[0];
	l_name = argument[1];
	l_argc = argument_count - 2;
	l_args2 = array_create(l_argc);
	l_i = 0;
	l__g1 = l_argc;
	
	while (l_i < l__g1)
	{
	    array_set(l_args2, l_i, argument[l_i + 2]);
	    l_i++;
	}
	
	l_copy = 0;
	
	if (l_copy == undefined)
	    l_copy = 1;
	
	if (ds_map_exists(this[3], l_name))
	{
	    l_scr = ds_map_find_value(this[3], l_name);
	    l_locals = array_create(l_scr[7]);
	    
	    if (l_copy)
	        l_args2 = gml_value_list_copy(l_args2);
	    
	    l_th = gml_thread_create(this, l_scr[10], l_args2, l_locals);
	    array_set(l_th, 3, this[9]);
	    array_set(l_th, 6, this[10]);
	    gml_thread_exec(l_th);
	    return l_th;
	}
	else
	{
	    return undefined;
	}
}
