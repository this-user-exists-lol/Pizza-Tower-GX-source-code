function gml_program_call_id_v()
{
	var this, l_scriptId, l_args1, l_copy, l_tmp, l_scr, l_locals, l_th;
	
	this = argument[0];
	l_scriptId = argument[1];
	l_args1 = argument[2];
	
	if (argument_count > 3)
	    l_copy = argument[3];
	else
	    l_copy = 1;
	
	l_scriptId -= global.g_gml_script_index_offset;
	
	if (l_scriptId >= 0)
	    l_tmp = l_scriptId < array_length_1d(this[2]);
	else
	    l_tmp = 0;
	
	if (l_tmp)
	{
	    l_scr = gml_std_haxe_boot_wget(this[2], l_scriptId);
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
