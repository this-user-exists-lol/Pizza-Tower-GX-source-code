function scr_player_freefall()
{
	var calculate
	landAnim = 1;
	move = key_left + key_right;
	
	if (!grounded)
	{
	    hsp = move * movespeed;
	    
	    if (move != xscale && momemtum == 1 && movespeed != 0)
	        movespeed -= 0.05;
	    
	    if (movespeed == 0)
	        momemtum = 0;
	    
	    if ((move == 0 && momemtum == 0) || scr_solid(x + hsp, y))
	    {
	        movespeed = 0;
	        mach2 = 0;
	    }
	    
	    if (move != 0 && movespeed < 7)
	        movespeed += 0.25;
	    
	    if (movespeed > 7)
	        movespeed -= 0.05;
	    
	    if ((scr_solid(x + 1, y) && move == 1) || (scr_solid(x - 1, y) && move == -1))
	        movespeed = 0;
	    
	    if (dir != xscale)
	    {
	        mach2 = 0;
	        dir = xscale;
	        movespeed = 0;
	    }
	    
	    if (move == -xscale)
	    {
	        mach2 = 0;
	        movespeed = 0;
	        momemtum = 0;
	    }
	    
	    if (move != 0) && (sprite_index != spr_player_divebomb)
	        xscale = move;
	}
	if (vsp > 5)
	{
		vsp += 0.5;
		freefallsmash++;
		if yscalestretch < 0.5
		{
			yscalestretch += 0.01
			xscalestretch -= 0.01
		}
	}
	
	if (freefallsmash > 20 && !instance_exists(superslameffectid))
	{
	    with (instance_create(x, y, obj_superslameffect))
	    {
	        playerid = other.object_index;
	        other.superslameffectid = id;
	    }
	}
	if ((animation_end()) && (sprite_index == spr_bodyslamstart))
		sprite_index = spr_bodyslamfall
	if (grounded && !place_meeting(x, y + 1, obj_destructibles))
	{
		if scr_slope()
        {
			if freefallsmash > 20
				movespeed = 14;
			else
				movespeed = 7
		    with (instance_place(x + xscale, y + 1, obj_slope))
		        other.xscale = -sign(image_xscale);
		    state = 45;
		    sprite_index = spr_crouchslip;
		}
		else
		{
		    scr_soundeffect(sfx_groundpound);
		    freefallsmash = 0;
			xscalestretch = 0.5
			yscalestretch = 0
			if sprite_index == spr_player_divebomb
				sprite_index = spr_player_divebombland
		    else if (shotgunAnim == 0)
		        sprite_index = spr_bodyslamland;
		    else
		        sprite_index = spr_shotgunjump2;
	    
		    image_index = 0;
		    state = 85;
		    jumpAnim = 1;
		    jumpstop = 0;
		    with (obj_camera)
		    {
		        shake_mag = 10;
		        shake_mag_acc = 30 / room_speed;
		    }
	    
		    combo = 0;
		    bounce = 0;
		    instance_create(x, y, obj_landcloud);
		    freefallstart = 0;
		}
	}
	
	image_speed = 0.35;
}
