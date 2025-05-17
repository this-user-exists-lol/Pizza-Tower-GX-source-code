function gml_node_equals_list()
{
	var l_a, l_b, l_n, l_i;
	
	l_a = argument[0];
	l_b = argument[1];
	l_n = array_length_1d(l_a);
	
	if (array_length_1d(l_b) != l_n)
	    return 0;
	
	l_i = 0;
	
	while (l_i < l_n)
	{
	    if (gml_node_equals(l_a[l_i], l_b[l_i]))
	        l_i++;
	    else
	        return 0;
	}
	
	return 1;
}
