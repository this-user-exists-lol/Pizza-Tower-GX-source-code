function vm_gml_thread_exec_slice_with4()
{
	var l_w, l_i;
	
	l_w = argument[1];
	l_i = argument[2];
	return script_execute(argument[0], l_w[l_i], l_w[l_i + 1], l_w[l_i + 2], l_w[l_i + 3]);
}
