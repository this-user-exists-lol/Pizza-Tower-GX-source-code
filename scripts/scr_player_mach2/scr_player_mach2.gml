function scr_player_mach2()
{
	if (windingAnim < 2000)
	    windingAnim++;
	
	hsp = xscale * movespeed;
	
	if (!place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2))
	    hsp = xscale * movespeed;
	else if (place_meeting(x, y + 1, obj_railh))
	    hsp = (xscale * movespeed) - 5;
	else if (place_meeting(x, y + 1, obj_railh2))
	    hsp = (xscale * movespeed) + 5;
	
	move2 = key_right2 + key_left2;
	move = key_right + key_left;
	crouchslideAnim = 1;
	
	if (!key_jump2 && jumpstop == 0 && vsp < 0.5)
	{
	    vsp /= 10;
	    jumpstop = 1;
	}
	
	if (grounded && vsp > 0)
	    jumpstop = 0;
	
	if (input_buffer_jump > 0 && grounded && !(move == 1 && xscale == -1) && !(move == -1 && xscale == 1))
	{
	    image_index = 0;
	    sprite_index = spr_secondjump1;
	    scr_soundeffect(sfx_jump);
	    vsp = -11;
	}
	
	if (grounded && vsp > 0)
	{
	    if (machpunchAnim == 0 && sprite_index != spr_mach && sprite_index != spr_mach4 && sprite_index != spr_player_machhit)
	    {
	        if (sprite_index != spr_player_machhit && sprite_index != spr_rollgetup && sprite_index != spr_mach1 && sprite_index != spr_dive)
	            sprite_index = spr_mach;
	    }
	    
	    if (machpunchAnim == 1)
	    {
	        if (punch == 0)
	            sprite_index = spr_machpunch1;
	        
	        if (punch == 1)
	            sprite_index = spr_machpunch2;
	        
	        if (floor(image_index) == 4 && sprite_index == spr_machpunch1)
	        {
	            punch = 1;
	            machpunchAnim = 0;
	        }
	        
	        if (floor(image_index) == 4 && sprite_index == spr_machpunch2)
	        {
	            punch = 0;
	            machpunchAnim = 0;
	        }
	    }
	}
	
	if (!grounded)
	    machpunchAnim = 0;
	
	if (grounded)
	{
	    if (movespeed < 12)
	        movespeed += 0.1;
	    
	    if (movespeed >= 12)
	    {
	        machhitAnim = 0;
	        state = 92;
	        flash = 1;
	        
	        if (sprite_index != spr_rollgetup)
	            sprite_index = spr_mach4;
	        
	        with (instance_create(x, y, obj_jumpdust))
	            image_xscale = other.xscale;
	    }
	}
	
	if (key_jump)
	    input_buffer_jump = 0;
	
	if (key_slap2 && (character == "P" || character == "N"))
	{
	    suplexmove = 1;
	    suplexdashsnd = audio_play_sound(sfx_suplexdash, 1, false);
	    state = 29;
	    image_index = 0;
		sprite_index = (shotgunAnim == 1? spr_shotgunsuplexdash : spr_suplexdash)
	}
	if (key_down && !place_meeting(x, y, obj_dashpad))
	{
	    with (instance_create(x, y, obj_jumpdust))
	        image_xscale = other.xscale;
	    sprite_index = (!grounded? spr_dive : spr_machroll)
	    flash = 0;
	    state = 45;
	    vsp = 10;
	}
	if ((!grounded && place_meeting(x + hsp, y, obj_solid) && !place_meeting(x + hsp, y, obj_destructibles) && !place_meeting(x + sign(hsp), y, obj_slope)) || (grounded && place_meeting(x + hsp, y - 64, obj_solid) && !place_meeting(x + hsp, y, obj_destructibles) && !place_meeting(x + hsp, y, obj_metalblock) && place_meeting(x, y + 1, obj_slope)))
	{
		ledge_bump(32, (abs(hsp) + 1))
	    wallspeed = movespeed;
	    state = 24;
	}
	
	if (grounded && !scr_slope() && place_meeting(x + hsp, y, obj_solid) && !place_meeting(x + hsp, y, obj_destructibles) && !place_meeting(x + sign(hsp), y, obj_slope))
	{
	    movespeed = 0;
	    state = 0;
	}
	
	if (!instance_exists(dashcloudid) && grounded)
	{
	    with (instance_create(x, y, obj_dashcloud))
	    {
	        image_xscale = other.xscale;
	        other.dashcloudid = id;
	    }
	}
	
	if (grounded && animation_end() && (sprite_index == spr_rollgetup || sprite_index == spr_mach1))
	    sprite_index = spr_mach;
	
	if (!grounded && sprite_index != spr_secondjump2 && sprite_index != spr_mach2jump && sprite_index != spr_mach2jump && sprite_index != spr_walljumpstart && sprite_index != spr_walljumpend  && sprite_index != spr_player_longjumpstart && sprite_index != spr_player_longjumpend)
	    sprite_index = spr_secondjump1;
	
	if (animation_end() && sprite_index == spr_secondjump1)
	    sprite_index = spr_secondjump2;
	
	if (animation_end() && sprite_index == spr_walljumpstart)
	    sprite_index = spr_walljumpend;
	
	if (animation_end() && sprite_index == spr_player_longjumpstart)
		sprite_index = spr_player_longjumpend
	
	if (key_attack && !place_meeting(x + xscale, y, obj_solid) && character == "S" && grounded)
	{
	    state = 29;
	    movespeed = 0;
	}
	
	if (key_taunt2)
		do_taunt()
	
	if (!key_attack && move != xscale && grounded &&(sprite_index = spr_mach))
	{
	    image_index = 0;
	    state = 79;
	    scr_soundeffect(sfx_break);
	    sprite_index = spr_machslidestart;
	}
	else if (!key_attack && move != xscale && grounded &&(sprite_index = spr_mach1))
		state = 0;
	
	if (move == -xscale && grounded) && (sprite_index = spr_mach)
	{
	    scr_soundeffect(sfx_machslideboost);
	    image_index = 0;
	    state = 79;
	    sprite_index = spr_machslideboost;
	}
	else if (move == -xscale && grounded) && (sprite_index = spr_mach1)
		xscale = -xscale
	
	if (key_slap2 && character == "V")
	{
	    vsp = -5;
	    state = 1;
	    image_index = 0;
	    sprite_index = spr_playerV_airrevolver;
	    image_index = 0;
	    instance_create(x + (image_xscale * 20), y + 20, obj_shotgunbullet);
	    scr_soundeffect(sfx_killingblow);
	}
	
	if (key_shoot2 && character == "V" && !instance_exists(obj_dynamite))
	{
	    vsp = -5;
	    state = 2;
	    image_index = 0;
	    sprite_index = spr_playerV_dynamitethrow;
	    
	    with (instance_create(x, y, obj_dynamite))
	    {
	        image_xscale = other.xscale;
	        movespeed = other.movespeed + 4;
	        vsp = -6;
	    }
	}
	
	if (grounded && (place_meeting(x + sign(hsp), y, obj_solid) && !scr_slope() && !place_meeting(x + hsp, y, obj_destructibles)))
	{
	    hsp = 0
	    vsp = 0
	    state = 80;
	    image_index = 0;
	}

	if (move == xscale && !key_attack && grounded)
	    state = 0;
	
	if (sprite_index == spr_rollgetup)
	    image_speed = 0.4;
	else if (sprite_index == spr_mach)
		image_speed = movespeed / 20
	else
	    image_speed = 0.65;
}
