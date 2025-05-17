function gml_std_string_pos_ext()
{
	var this, l_startPos, l_out;
	
	this = argument[0];
	
	if (argument_count > 2)
	    l_startPos = argument[2];
	else
	    l_startPos = 0;
	
	l_out = string_pos(argument[1], (l_startPos > 0) ? string_delete(this, 1, l_startPos) : this);
	
	if (l_out > 0)
	    return (l_out + l_startPos) - 1;
	else
	    return -1;
}
