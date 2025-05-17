function scr_player_tacklecharge()
{
	if (windingAnim < 2000)
	    windingAnim++;
	
	if (!place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2))
	    hsp = xscale * movespeed;
	else if (place_meeting(x, y + 1, obj_railh))
	    hsp = (xscale * movespeed) - 5;
	else if (place_meeting(x, y + 1, obj_railh2))
	    hsp = (xscale * movespeed) + 5;
	
	move2 = key_right2 + key_left2;
	move = key_right + key_left;
	crouchslideAnim = 1;
	
	if (movespeed < 24 && move == xscale)
	    movespeed += 0.05;
	
	if (!key_jump2 && jumpstop == 0 && vsp < 0.5)
	{
	    vsp /= 10;
	    jumpstop = 1;
	}
	
	if (grounded && vsp > 0)
	    jumpstop = 0;
	
	if (input_buffer_jump > 0 && grounded)
	{
	    image_index = 0;
	    sprite_index = spr_player_secondjump1;
	    scr_soundeffect(sfx_jump);
	    vsp = -11;
	}
	
	if (key_jump)
	    input_buffer_jump = 0;
	
	if (scr_solid(x + hsp, y) && !place_meeting(x + hsp, y, obj_slope) && !place_meeting(x + hsp, y, obj_destructibles)) || (key_slap2)
	{
		state = 6;
	    hsp = -2.5;
	    vsp = -3;
	    mach2 = 0;
		sprite_index = spr_swingdingend
	    image_index = 0;
	}
	
	if sprite_index != spr_swingdingend
		sprite_index = spr_swingding;
	image_speed = 0.65;
	
	movespeed -= 0.1
	if movespeed < 0
		state = 54
	if (!instance_exists(dashcloudid) && grounded)
	{
	    with (instance_create(x, y, obj_dashcloud))
	    {
	        image_xscale = other.xscale;
	        other.dashcloudid = id;
	    }
	}
}
