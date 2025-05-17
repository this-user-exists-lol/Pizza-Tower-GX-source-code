function gml_builder_expect()
{
	var this, l_tk;
	
	this = argument[0];
	l_tk = argument[2];
	return gml_builder_error(this, "Expected " + argument[1] + ", got " + global.g_gml_token_names[l_tk[0]], l_tk);
}
