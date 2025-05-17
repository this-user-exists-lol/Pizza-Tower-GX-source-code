function gml_seek_alarms_check()
{
	var l__g;
	
	l__g = argument[0];
	
	if (l__g[0] == 38)
	{
	    if (l__g[3] == "alarm")
	        return l__g[2];
	    else
	        return undefined;
	}
	else
	{
	    return undefined;
	}
}
