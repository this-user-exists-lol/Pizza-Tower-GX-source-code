function scr_player_machslide()
{
	if (!place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2))
	    hsp = xscale * movespeed;
	else if (place_meeting(x, y + 1, obj_railh))
	    hsp = (xscale * movespeed) - 5;
	else if (place_meeting(x, y + 1, obj_railh2))
	    hsp = (xscale * movespeed) + 5;
	
	move = key_right + key_left;
	
	if (movespeed >= 0)
	    movespeed -= 0.4;
	
	if (sprite_index == spr_machslidestart && floor(image_index) == (image_number - 1))
	    sprite_index = spr_machslide;
	if (animation_end()) && (sprite_index = spr_machslideboost) && (!grounded)
		sprite_index = spr_player_machslideboostfall
	if (animation_end()) && (sprite_index = spr_mach3boost) && (!grounded)
		sprite_index = spr_player_machslideboost3fall
	image_speed = 0.35;
	landAnim = 0;
	
	if (floor(movespeed) <= 0 && (sprite_index == spr_machslide || sprite_index == spr_crouchslide))
	{
	    state = 0;
	    image_index = 0;
	    
	    if (sprite_index == spr_machslide)
	        machslideAnim = 1;
	    
	    movespeed = 0;
	}
	
	if (place_meeting(x + xscale, y, obj_solid) && (sprite_index == spr_machslide || sprite_index == spr_machslidestart))
	{
	    hsp = 0
	    vsp = 0
	    state = 80;
	    image_index = 0;
	}
	
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_machslideboost && grounded) || (sprite_index == spr_player_machslideboostfall && grounded)
	{
	    hsp = 0;
	    image_index = 0;
	    xscale *= -1;
	    movespeed = 8;
	    state = 78;
	}
	
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_mach3boost && grounded) || (sprite_index == spr_player_machslideboost3fall && grounded)
	{
	    hsp = 0;
	    sprite_index = spr_mach4;
	    image_index = 0;
	    xscale *= -1;
	    movespeed = 12;
	    state = 92;
	}
	
	if (sprite_index == spr_player_crouchslide && movespeed == 0 && grounded)
	{
	    facehurt = 1;
	    state = 0;
	    sprite_index = spr_facehurtup;
	}
	
	if (!instance_exists(dashcloudid) && grounded && !place_meeting(x, y + 1, obj_water))
	{
	    with (instance_create(x, y, obj_dashcloud2))
	    {
	        image_xscale = other.xscale;
	        other.dashcloudid = id;
	    }
	}
	
	if (!instance_exists(dashcloudid) && grounded && place_meeting(x, y + 1, obj_water))
	{
	    with (instance_create(x, y, obj_dashcloud2))
	    {
	        sprite_index = spr_watereffect;
	        image_xscale = other.xscale;
	        other.dashcloudid = id;
	    }
	}
}
