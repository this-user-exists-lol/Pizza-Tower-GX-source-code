function gml_object_setup()
{
	var l_object1, l_access, l_acc, l_children, l_i, l__g1;
	
	l_object1 = argument[0];
	l_access = argument[1];
	l_acc = global.g_gml_object_access;
	array_set(l_acc, l_object1, l_access);
	l_children = global.g_gml_object_children[l_object1];
	l_i = 0;
	l__g1 = array_length_1d(l_children);
	
	while (l_i < l__g1)
	{
	    array_set(l_acc, l_children[l_i], l_access);
	    l_i++;
	}
}
