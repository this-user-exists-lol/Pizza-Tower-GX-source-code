function gml_with_first()
{
	var l_seek;
	
	l_seek = argument[0];
	
	if (gml_std__Std_StdImpl_isNumber(l_seek))
	{
	    with (l_seek)
	        return id;
	    
	    if (l_seek < 100000)
	        gml_thread_error("Could not find any instances of " + gml_std_Std_string(l_seek) + "(" + object_get_name(round(l_seek)) + ")");
	    else
	        gml_thread_error("Could not find instance " + gml_std_Std_string(l_seek));
	    
	    return undefined;
	}
	else
	{
	    return l_seek;
	}
}
