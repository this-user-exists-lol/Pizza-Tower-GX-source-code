function scr_player_bump()
{
	movespeed = 0;
	mach2 = 0;
	start_running = 1;
	alarm[4] = 14;
	
	if (grounded && vsp > 0)
	{
	    hsp = 0;
		if (sprite_index == spr_player_suplexbump)
			state = 0
	}
	if (sprite_index != spr_player_suplexbump)
	{
		if (floor(image_index) == (image_number - 1))
		    state = 0;
	}
	
	if (sprite_index != spr_player_catched && sprite_index != spr_tumbleend && sprite_index != spr_hitwall && sprite_index != spr_player_suplexbump)
	    sprite_index = spr_player_wallsplat;
	if (sprite_index == spr_player_wallsplat)
	{
		hsp = 0
		vsp = 0
	}
	image_speed = 0.35;
}
