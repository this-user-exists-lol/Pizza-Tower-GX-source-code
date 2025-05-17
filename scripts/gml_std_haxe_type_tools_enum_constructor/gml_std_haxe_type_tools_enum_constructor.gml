function gml_std_haxe_type_tools_enum_constructor()
{
	var l_e, l_et, l_cs, l_i;
	
	l_e = argument[0];
	
	if (gml_std_haxe_type_has(l_e))
	{
	    l_et = l_e[0];
	    l_cs = l_et[4];
	    l_i = l_e[0];
	    
	    if (l_cs != undefined && l_i >= 0 && l_i < array_length_1d(l_cs))
	        return l_cs[l_i];
	    else
	        return gml_std_Std_string(l_e);
	}
	else
	{
	    return gml_std_Std_string(l_e);
	}
}
