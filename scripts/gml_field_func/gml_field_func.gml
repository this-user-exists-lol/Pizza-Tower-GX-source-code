function gml_field_func()
{
	var l_inst, l_field, l_set, l_val, l_obj;
	
	l_inst = argument[0];
	l_field = argument[1];
	l_set = argument[2];
	l_val = argument[3];
	
	with (l_inst)
	{
	    if (l_set)
	        variable_instance_set(id, l_field, l_val);
	    else if (variable_instance_exists(id, l_field))
	        l_val = variable_instance_get(id, l_field);
	    else
	        gml_thread_error("`" + gml_std_Std_string(l_inst) + "` (" + object_get_name(object_index) + ") does not have a variable `" + l_field + "`");
	    
	    return l_val;
	}
	
	if (l_set)
	{
	    if (variable_instance_get(l_inst, "id") != undefined)
	    {
	        variable_instance_set(l_inst, l_field, l_val);
	        return l_val;
	    }
	}
	else
	{
	    l_val = variable_instance_get(l_inst, l_field);
	    
	    if (l_val != undefined)
	        return l_val;
	    
	    if (variable_instance_get(l_inst, "id") != undefined)
	    {
	        if (variable_instance_exists(l_inst, l_field))
	            return l_val;
	        
	        l_obj = variable_instance_get(l_inst, "object_index");
	        
	        if (object_exists(l_obj))
	        {
	            gml_thread_error("`" + gml_std_Std_string(l_inst) + "` (" + object_get_name(l_obj) + ") does not have a variable `" + l_field + "`");
	            return l_val;
	        }
	    }
	}
	
	if (object_exists(l_inst | obj_slope))
	    gml_thread_error("Couldn't find any instances of " + gml_std_Std_string(l_inst) + " (" + object_get_name(l_inst | obj_slope) + ")");
	else
	    gml_thread_error("Couldn't find instance `" + gml_std_Std_string(l_inst) + "`");
	
	return undefined;
}
