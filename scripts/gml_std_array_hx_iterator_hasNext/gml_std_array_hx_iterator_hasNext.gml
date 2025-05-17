function gml_std_array_hx_iterator_hasNext()
{
	var this;
	
	this = argument[0];
	return this[3] < array_length_1d(this[2]);
}
