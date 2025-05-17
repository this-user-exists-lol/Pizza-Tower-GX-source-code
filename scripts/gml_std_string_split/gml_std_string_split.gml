function gml_std_string_split()
{
	var this, l_del, l_str, l_num, l_arr, l_pos;
	
	this = argument[0];
	l_del = argument[1];
	l_str = this;
	l_num = 0;
	l_arr = array_create(string_count(l_del, l_str) + 1, 0);
	l_pos = string_pos(l_del, l_str);
	
	while (l_pos > 0)
	{
	    array_set(l_arr, l_num, string_copy(l_str, 1, l_pos - 1));
	    l_num++;
	    l_str = string_delete(l_str, 1, l_pos);
	    l_pos = string_pos(l_del, l_str);
	}
	
	array_set(l_arr, l_num, l_str);
	return l_arr;
}
