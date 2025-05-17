function gml_std_array_hx_iterator_create()
{
	var this;
	
	this = array_create(4);
	array_set(this, 0, 213);
	array_set(this, 1, 427);
	array_set(this, 2, argument[0]);
	array_set(this, 3, 0);
	return this;
}
