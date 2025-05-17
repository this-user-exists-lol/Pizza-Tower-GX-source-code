function gml_with_scope_destroy()
{
	var l_q;
	
	l_q = argument[0];
	
	while (l_q != undefined)
	{
	    vm__gml_with_data_gml_with_data_impl__destroy(l_q[5]);
	    l_q = l_q[4];
	}
}
