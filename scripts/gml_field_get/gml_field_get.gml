function gml_field_get()
{
	var l_field, l_defValue;
	
	l_field = argument[1];
	l_defValue = argument[2];
	
	with (argument[0])
	{
	    if (variable_instance_exists(id, l_field))
	        return variable_instance_get(id, l_field);
	    else
	        return l_defValue;
	}
	
	return l_defValue;
}
