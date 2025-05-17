function gml_program_print()
{
	var this, l_r, l__g, l__g1, l_i, l_scr;
	
	this = argument[0];
	l_r = "";
	l__g = 0;
	l__g1 = array_length_1d(this[2]);
	
	while (l__g < l__g1)
	{
	    l_i = l__g++;
	    
	    if (l_i > 0)
	        l_r += "\n";
	    
	    l_scr = gml_std_haxe_boot_wget(this[2], l_i);
	    l_r += ("#define " + l_scr[1] + "\n" + gml_action_list_print(l_scr[10]));
	}
	
	return l_r;
}
