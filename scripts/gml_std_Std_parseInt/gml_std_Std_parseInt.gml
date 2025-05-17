function gml_std_Std_parseInt()
{
	var l_value, l_n;
	
	l_value = argument[0];
	l_n = string_length(string_digits(l_value));
	
	if (l_n && l_n == (string_length(l_value) - (string_ord_at(l_value, 1) == 45)))
	    return real(l_value);
	else
	    return undefined;
}
