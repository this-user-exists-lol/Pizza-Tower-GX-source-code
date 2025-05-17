function gml_std_array_hx_copy()
{
	var l_arr, l_len, l_out;
	
	l_arr = argument[0];
	l_len = array_length_1d(l_arr);
	
	if (l_len > 0)
	{
	    l_out = [];
	    array_copy(l_out, 0, l_arr, 0, l_len);
	}
	else
	{
	    l_out = [];
	}
	
	return l_out;
}
