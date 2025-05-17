function scr_NEWenemy_walk()
{
	var targetplayer
	if chaseplayer
	{
		targetplayer = obj_player1
	    if (x != targetplayer.x && !(image_xscale == -sign(x - targetplayer.x)))
	    {
	        movespeed = 7;
	        image_xscale = -sign(x - targetplayer.x);
	        momentum = -image_xscale * (movespeed + 4);
	    }
	    hsp = (image_xscale * movespeed) + momentum;
	    
	    if (momentum > 0)
	        momentum -= 0.1;
	    
	    if (momentum <= 0)
	        momentum += 0.1;
	    
	    if (scr_solid(x, y + 1))
	        steppy--;
	    
	    if (steppy == 0)
	    {
	        instance_create(x, y + 43, obj_cloudeffect);
	        steppy = 20;
	    }
	}
	else
	{
		if sprite_index != spr_turn
			movespeed = defaultmovespeed
		else
			movespeed = 0
	}
	if ((animation_end()) && (sprite_index = spr_turn)) || (sprite_index != spr_walk && sprite_index != spr_turn)
	{
		turning = 0
		sprite_index = spr_walk
	}
	image_speed = 0.35
	if ((scr_solid(x + 1, y) && image_xscale == 1) || (scr_solid(x - 1, y) && image_xscale == -1) || place_meeting(x + hsp, y, obj_hallway))
	{
	    if (!place_meeting(x + sign(hsp), y, obj_slope))
		{
			if (object_index == obj_forknight)
			{
				turning = 1
				image_index = 0
				sprite_index = spr_turn
			}
			x -= hsp
			image_xscale *= -1;
		}
	}
	if !chaseplayer
	{
		if (!(scr_solid(x + (image_xscale * 15), y + 31) || place_meeting(x + (image_xscale * 15), y + 31, obj_platform)))
		{
		    if (!place_meeting(x + sign(hsp), y, obj_slope))
			{
				if (object_index == obj_forknight)
				{
					turning = 1
					image_index = 0
					sprite_index = spr_turn
				}
				x -= hsp
				image_xscale *= -1;
			}
		}
	}
}