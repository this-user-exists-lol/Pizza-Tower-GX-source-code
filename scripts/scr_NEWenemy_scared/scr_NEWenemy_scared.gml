function scr_NEWenemy_scared()
{
	hsp = 0
	movespeed = 0
	if scaredtimer > 0
		scaredtimer--
	else if scaredtimer == 0
		enemy_go_to_walking()
	if (vsp > 1 && (grounded || (grounded && !place_meeting(x, y, obj_platform))))
	{
	    instance_create(x, y, obj_landcloud);
	    image_index = 0;
	}
	sprite_index = spr_scared
	image_speed = 0.35
}