function gml_program_call_v()
{
	var this, l_name, l_args1, l_copy, l_scr, l_locals, l_th;
	
	this = argument[0];
	l_name = argument[1];
	l_args1 = argument[2];
	
	if (argument_count > 3)
	    l_copy = argument[3];
	else
	    l_copy = 1;
	
	if (ds_map_exists(this[3], l_name))
	{
	    l_scr = ds_map_find_value(this[3], l_name);
	    l_locals = array_create(l_scr[7]);
	    
	    if (l_copy)
	        l_args1 = gml_value_list_copy(l_args1);
	    
	    l_th = gml_thread_create(this, l_scr[10], l_args1, l_locals);
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
