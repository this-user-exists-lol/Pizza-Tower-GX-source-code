function gml_compile_program()
{
	var l_p, l_arr, l_num, l_i;
	
	l_p = argument[0];
	global.g_gml_compile_curr_program = l_p;
	l_arr = l_p[2];
	l_num = array_length_1d(l_arr);
	
	for (l_i = 0; l_i < l_num; l_i++)
	{
	    if (gml_compile_script(l_arr[l_i]))
	        break;
	}
	
	global.g_gml_compile_curr_program = undefined;
	return l_i < l_num;
}
