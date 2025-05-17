if (global.showcollisions == 1)
{
	with obj_solid
		visible = true
	with obj_slope
		visible = true
	with obj_platform
		visible = true
}
else
{
	with obj_solid
	{
		if (object_index == obj_solid)
			visible = false
	}
	with obj_slope
		visible = false
	with obj_platform
		visible = false
}


