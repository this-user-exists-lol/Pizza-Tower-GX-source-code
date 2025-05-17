function cutscene_customer_create()
{
	var xx, yy, _idle, _happy, _xscale;
	
	xx = argument0;
	yy = argument1;
	_idle = argument2;
	_happy = argument3;
	_xscale = argument4;
	
	with (instance_create(xx, yy, obj_customeractor))
	{
	    image_xscale = _xscale;
	    depth = other.depth - 1;
	    sprite_index = _idle;
	    spr_idle = _idle;
	    spr_happy = _happy;
	}
	
	cutscene_end_action();
}
