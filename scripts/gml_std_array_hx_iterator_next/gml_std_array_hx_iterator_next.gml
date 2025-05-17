function gml_std_array_hx_iterator_next()
{
	var this;
	
	this = argument[0];
	return gml_std_haxe_boot_wget(this[2], array_set_post(this, 3, array_get(this, 3) + 1));
}
