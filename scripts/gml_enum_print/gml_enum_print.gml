function gml_enum_print()
{
	var this, l_r, l_z, l__g, l__g1, l_ctr;
	
	this = argument[0];
	l_r = "(enum " + this[1] + " { ";
	l_z = 0;
	l__g = 0;
	l__g1 = this[3];
	
	while (l__g < array_length_1d(l__g1))
	{
	    l_ctr = l__g1[l__g];
	    l__g++;
	    
	    if (l_z)
	        l_r += ", ";
	    else
	        l_z = 1;
	    
	    l_r += (l_ctr[1] + " = " + string(l_ctr[4]));
	}
	
	return l_r + " })";
}
