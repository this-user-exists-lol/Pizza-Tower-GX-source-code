function gml_value_list_copy()
{
	var l_this1, l_n, l_r;
	
	l_this1 = argument[0];
	l_n = array_length_1d(l_this1);
	l_r = array_create(l_n);
	array_copy(l_r, 0, l_this1, 0, l_n);
	return l_r;
}
