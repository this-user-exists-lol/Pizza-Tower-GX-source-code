function live_snippet_create()
{
	var l_name, l_pg;
	
	if (argument_count > 1)
	    l_name = argument[1];
	else
	    l_name = "snippet";
	
	l_pg = gml_program_create([gml_source_create(l_name, argument[0], "")]);
	
	if (l_pg[11] == undefined)
	{
	    return l_pg;
	}
	else
	{
	    global.g_live_result = l_pg[11];
	    gml_program_destroy(l_pg);
	    return undefined;
	}
}
