function gml_std_string_substring()
{
	var this, l_start, l_end, l_tmp, l_len;
	
	this = argument[0];
	l_start = argument[1];
	
	if (argument_count > 2)
	    l_end = argument[2];
	else
	    l_end = undefined;
	
	if (l_end == undefined)
	{
	    if (l_start > 0)
	        return string_delete(this, 1, l_start);
	    else
	        return this;
	}
	
	if (l_start < 0)
	    l_start = 0;
	
	if (l_end < 0)
	    l_end = 0;
	
	if (l_start > l_end)
	{
	    l_tmp = l_start;
	    l_start = l_end;
	    l_end = l_tmp;
	}
	
	l_len = string_length(this);
	
	if (l_start >= l_len)
	{
	    return "";
	}
	else if (l_end >= l_len)
	{
	    if (l_start > 0)
	        return string_delete(this, 1, l_start);
	    else
	        return this;
	}
	else
	{
	    return string_copy(this, l_start + 1, l_end - l_start);
	}
}
