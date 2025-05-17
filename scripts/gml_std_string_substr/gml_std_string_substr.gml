function gml_std_string_substr()
{
	var this, l_pos, l_len;
	
	this = argument[0];
	l_pos = argument[1];
	
	if (argument_count > 2)
	    l_len = argument[2];
	else
	    l_len = undefined;
	
	if (l_pos < 0)
	    l_pos += string_length(this);
	
	if (l_len == undefined)
	    return string_delete(this, 1, l_pos);
	else
	    return string_copy(this, 1 + l_pos, l_len);
}
