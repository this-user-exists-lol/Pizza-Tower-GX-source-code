function gml_parse_name()
{
	var l_s, l_i, l_c, l_k;
	
	l_s = argument[0];
	l_i = argument[1];
	l_c = string_ord_at(l_s, l_i + 1);
	
	if ((l_c >= 97 && l_c <= 122) || (l_c >= 65 && l_c <= 90) || l_c == 95)
	{
	    l_k = l_i;
	    
	    while (true)
	    {
	        l_i++;
	        l_c = string_ord_at(l_s, l_i + 1);
	        
	        if (!(l_c == 95 || (l_c >= 97 && l_c <= 122) || (l_c >= 65 && l_c <= 90) || (l_c >= 48 && l_c <= 57)))
	            break;
	    }
	    
	    return gml_std_string_substring(l_s, l_k, l_i);
	}
	else
	{
	    show_error("API.parseName: wrong format in " + l_s, 0);
	}
}
