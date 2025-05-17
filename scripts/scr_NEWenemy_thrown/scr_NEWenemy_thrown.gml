function scr_NEWenemy_thrown()
{
	grav = 0
	if (instance_place((x + hsp), (y + vsp), obj_solid) && !instance_place((x + hsp), (y + vsp), obj_destructibles) || scr_slope())
		instance_destroy()
	if vsp > 1 || vsp < -1
	{
		if yscalestretch < 0.5
		{
			xscalestretch -= 0.1
			yscalestretch += 0.1
		}
	}
	if hsp > 1 || hsp < -1
	{
		if xscalestretch < 0.5
		{
			xscalestretch += 0.1
			yscalestretch -= 0.1
		}
	}
	sprite_index = spr_dead
}