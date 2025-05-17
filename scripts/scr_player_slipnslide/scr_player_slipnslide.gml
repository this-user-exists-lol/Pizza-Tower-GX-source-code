function scr_player_slipnslide()
{
	hsp = xscale * movespeed;
	if (place_meeting(x + hsp, y, obj_solid) && !place_meeting(x + hsp, y, obj_slope) && !place_meeting(x + hsp, y, obj_destructibles))
	{
		image_index = 0
		scr_soundeffect(choose(sfx_sliphitwall1, sfx_sliphitwall2, sfx_sliphitwall3, sfx_sliphitwall4, sfx_sliphitwall5))
		instance_create((x + 30), y, obj_bangeffect)
		xscale *= -1
		movespeed = Approach(movespeed, 0, 3)
	}
	
    if (floor(image_index) == (image_number - 1) && sprite_index == spr_player_slip)
        image_speed = 0
    else
        image_speed = 0.35
	
	if (grounded) && (vsp > 0) && (sprite_index == spr_player_slip)
	{
		scr_soundeffect(choose(sfx_slipend1, sfx_slipend2, sfx_slipend3))
		image_index = 0
		sprite_index = spr_player_slipland
	}
		
	if (sprite_index == spr_player_slipland)
	{
		movespeed = Approach(movespeed, 0, 0.5)
		if (animation_end()) && (abs(hsp) <= 2)
			state = 0
	}
}
