function cutscene_set_hsp()
{
	var _obj, _hsp;
	
	_obj = argument0;
	_hsp = argument1;
	
	with (_obj)
	    hsp = _hsp;
	
	cutscene_end_action();
}
