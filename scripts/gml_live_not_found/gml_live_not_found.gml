function gml_live_not_found()
{
	var l_inst;
	
	l_inst = argument[0];
	
	if (object_exists(l_inst | obj_slope))
	    gml_thread_error("Couldn't find any instances of " + gml_std_Std_string(l_inst) + " (" + object_get_name(l_inst | obj_slope) + ")");
	else
	    gml_thread_error("Couldn't find instance `" + gml_std_Std_string(l_inst) + "`");
}
