function gml_std_string_hx_startsWith()
{
	var l_s, l_z, l_n;
	
	l_s = argument[0];
	l_z = argument[1];
	l_n = string_length(l_z);
	return string_length(l_s) >= l_n && string_copy(l_s, 1, l_n) == l_z;
}
