function gml_std_haxe_enum_tools_set()
{
	var l_qx, l_vx, l_i, l__g1;
	
	l_qx = argument[0];
	l_vx = argument[1];
	l_i = 0;
	l__g1 = array_length_1d(l_vx);
	
	while (l_i < l__g1)
	{
	    array_set(l_qx, l_i, l_vx[l_i]);
	    l_i++;
	}
}
