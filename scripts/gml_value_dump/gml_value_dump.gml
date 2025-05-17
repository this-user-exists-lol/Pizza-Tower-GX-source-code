function gml_value_dump()
{
	var l_this1;
	
	l_this1 = argument[0];
	return "`" + gml_value_print(l_this1) + "` (" + gml_value_get_type(l_this1) + ")";
}
