function gml_std_Std_parseFloat()
{
	var l_s, l_l, l_n, l_p, l_e;
	
	l_s = argument[0];
	l_l = string_length(l_s);
	l_n = string_length(string_digits(l_s));
	l_p = string_pos(".", l_s);
	l_e = string_pos("e", l_s);
	
	if (l_e == 0)
	    l_e = string_pos("E", l_s);
	
	switch (l_e)
	{
	    case 0:
	        break;
	    
	    case 1:
	        return global.g_gml_std_mathnf_not_a_number;
	    
	    case 2:
	        if (l_p > 0)
	            return global.g_gml_std_mathnf_not_a_number;
	        
	        break;
	    
	    default:
	        if (l_p > 0 && l_e < l_p)
	            return global.g_gml_std_mathnf_not_a_number;
	}
	
	if (l_e != 0 && l_e < (l_l - 1))
	{
	    switch (string_ord_at(l_s, l_e + 1))
	    {
	        case 43:
	        case 45:
	            l_l--;
	            break;
	    }
	}
	
	if (l_n && l_n == (l_l - (string_ord_at(l_s, 1) == 45) - (l_p != 0) - (l_e != 0)))
	    return real(l_s);
	else
	    return global.g_gml_std_mathnf_not_a_number;
}
