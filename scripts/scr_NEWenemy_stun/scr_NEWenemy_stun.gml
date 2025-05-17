function scr_NEWenemy_stun()
{
	if stuntimer > 0
		stuntimer--
	sprite_index = spr_stun
	image_speed = 0.35
	if (grounded)
	{
		if movespeed > 0
			movespeed -= 0.5
		if stuntimer == 0
		{
			if object_index = obj_pizzaboy
				enemystate = enemy_states.sleep
			else
			{
				vsp = -2
				enemy_go_to_walking()
			}
		}
	}
	if ((scr_solid(x + 1, y) && image_xscale == 1) || (scr_solid(x - 1, y) && image_xscale == -1) && !grounded)
	{
	    if (!place_meeting(x + sign(hsp), y, obj_slope))
		{
		    with (instance_create(x, y, obj_bulletimpact))
		        image_xscale = -other.image_xscale;
			yscalestretch = 0.5
			x -= hsp
			image_xscale *= -1;
		}
	}

}