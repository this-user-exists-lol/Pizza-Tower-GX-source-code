function gml_enum_add()
{
	var this, l_name, l_val, l_ctr;
	
	this = argument[0];
	l_name = argument[1];
	l_val = argument[2];
	l_ctr = gml_enum_ctr_create(l_name, this[2], [1, this[2], l_val, string(l_val)]);
	array_set(l_ctr, 4, l_val);
	gml_std_array_hx_push(this[3], l_ctr);
	ds_map_set(this[4], l_name, l_ctr);
}
