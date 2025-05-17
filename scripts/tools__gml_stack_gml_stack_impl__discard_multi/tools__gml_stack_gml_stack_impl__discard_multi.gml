function tools__gml_stack_gml_stack_impl__discard_multi()
{
	var l_this1, l_n, l_i;
	
	l_this1 = argument[0];
	l_n = argument[1];
	l_i = l_this1[0];
	l_i -= l_n;
	array_copy(l_this1, l_i, global.g_tools__gml_stack_gml_stack_impl__fill_value_arr, 0, l_n);
	array_set(l_this1, 0, l_i);
}
