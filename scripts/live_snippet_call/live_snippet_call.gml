function live_snippet_call()
{
	var l_snippet, l_argc, l_argv, l_i, l_th;
	
	l_snippet = argument[0];
	l_argc = argument_count - 1;
	l_argv = array_create(l_argc);
	l_i = 0;
	
	repeat (l_argc)
	{
	    array_set(l_argv, l_i, argument[l_i + 1]);
	    l_i++;
	}
	
	l_th = gml_program_call_v(l_snippet, "", l_argv, 0);
	
	if (l_th[2] == 3)
	{
	    global.g_live_result = l_th[1];
	    return 1;
	}
	else
	{
	    global.g_live_result = l_th[7];
	    
	    if (global.g_live_result == undefined)
	        global.g_live_result = "(unknown error)";
	    
	    return 0;
	}
}
