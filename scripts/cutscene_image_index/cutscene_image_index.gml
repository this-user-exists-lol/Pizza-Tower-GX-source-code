function cutscene_image_index()
{
	var _obj, _index;
	
	_obj = argument0;
	_index = argument1;
	
	with (_obj)
	    image_index = _index;
	
	cutscene_end_action();
}
