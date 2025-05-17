function scr_player_normal()
{
	if (dir != xscale)
	{
	    dir = xscale;
	    movespeed = 2;
	    facehurt = 0;
	}
	
	mach2 = 0;
	move = key_left + key_right;
	create_afterimage(x, y, sprite_index, image_index)
	if (!place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2))
	    hsp = move * movespeed;
	else if (place_meeting(x, y + 1, obj_railh))
	    hsp = (move * movespeed) - 5;
	else if (place_meeting(x, y + 1, obj_railh2))
	    hsp = (move * movespeed) + 5;
	
	if (character == "P" || character == "N" || character == "V")
	{
	    if (machslideAnim == 0 && landAnim == 0 && shotgunAnim == 0)
	    {
	        if (move == 0)
	        {
	            if (idle < 400)
	                idle++;
	            
	            if (idle >= 150 && floor(image_index) == (image_number - 1))
	            {
	                facehurt = 0;
	                idle = 0;
	                image_index = 0;
	            }
	            
	            if (idle >= 150 && sprite_index != spr_idle1 && sprite_index != spr_idle2 && sprite_index != spr_idle3 && sprite_index != spr_idle4 && sprite_index != spr_idle5 && sprite_index != spr_idle6)
	            {
	                randomise();
	                idleanim = random_range(0, 100);
	                
	                if (idleanim <= 16)
	                    sprite_index = spr_idle1;
	                
	                if (idleanim > 16 && idleanim < 32)
	                    sprite_index = spr_idle2;
	                
	                if (idleanim > 32 && idleanim < 48)
	                    sprite_index = spr_idle3;
	                
	                if (idleanim > 48 && idleanim < 64)
	                    sprite_index = spr_idle4;
	                
	                if (idleanim > 64 && idleanim < 80)
	                    sprite_index = spr_idle5;
	                
	                if (idleanim > 80)
	                    sprite_index = spr_idle6;
	                
					scr_voice("neutral")
	                image_index = 0;
	            }
	            
	            if (idle < 150)
	            {
	                if (facehurt == 0)
	                {
	                    if (windingAnim < 1800 || angry == 1 || global.playerhealth == 1)
	                    {
	                        start_running = 1;
	                        movespeed = 0;
	                        
	                        if (sprite_index == spr_playerV_revolverend)
	                        {
	                        }
	                        else if (global.minutes == 0 && global.seconds == 0)
	                        {
	                            sprite_index = spr_hurtidle;
	                        }
	                        else if (global.panic == 1 || global.snickchallenge == 1)
	                        {
	                            sprite_index = spr_panic;
	                        }
	                        else if (angry == 1)
	                        {
	                            sprite_index = spr_3hpidle;
	                        }
	                        else
	                        {
	                            sprite_index = spr_idle;
	                        }
	                    }
	                    else if (character == "P" || character == "N" || character == "V")
	                    {
	                        idle = 0;
	                        windingAnim--;
	                        sprite_index = spr_winding;
	                    }
	                }
	                else if (facehurt == 1 && (character == "P" || character == "N" || character == "V"))
	                {
	                    windingAnim = 0;
	                    
	                    if (sprite_index != spr_facehurtup && sprite_index != spr_facehurt)
	                        sprite_index = spr_facehurtup;
	                    
	                    if (floor(image_index) == (image_number - 1) && sprite_index == spr_facehurtup)
	                        sprite_index = spr_facehurt;
	                }
	            }
	        }
	        
	        if (move != 0)
	        {
	            machslideAnim = 0;
	            idle = 0;
	            facehurt = 0;
	            
	            if (global.minutes == 0 && global.seconds == 0)
	                sprite_index = spr_hurtwalk;
	            else if (angry == 1)
	                sprite_index = spr_3hpwalk;
	            else
	                sprite_index = spr_move;
	        }
	        
	        if (move != 0)
	            xscale = move;
	    }
	}
	if (landAnim == 1)
	{
	    if (shotgunAnim == 0)
	    {
	        if (move == 0)
	        {
	            movespeed = 0;
	            sprite_index = spr_land;
	            
	            if (floor(image_index) == (image_number - 1))
	                landAnim = 0;
	        }
	        
	        if (move != 0)
	        {
	            sprite_index = spr_land2;
	            
	            if (floor(image_index) == (image_number - 1))
	            {
	                landAnim = 0;
	                sprite_index = spr_move;
	                image_index = 0;
	            }
	        }
	    }
	    
	    if (shotgunAnim == 1)
	    {
	        sprite_index = spr_shotgunland;
	        
	        if (floor(image_index) == (image_number - 1))
	        {
	            landAnim = 0;
	            sprite_index = spr_move;
	            image_index = 0;
	        }
	    }
	}
	
	if (machslideAnim == 1)
	{
	    sprite_index = spr_machslideend;
	    
	    if (floor(image_index) == (image_number - 1) && sprite_index == spr_machslideend)
	        machslideAnim = 0;
	}
	
	if (sprite_index == spr_playerV_revolverend && floor(image_index) == (image_number - 1))
	    sprite_index = spr_idle;
	
	if (sprite_index == spr_shotgunshoot && floor(image_index) == (image_number - 1))
	    sprite_index = spr_shotgunidle;
	
	if (landAnim == 0)
	{
	    if (shotgunAnim == 1 && move == 0 && sprite_index != spr_shotgunshoot)
	        sprite_index = spr_shotgunidle;
	    else if (shotgunAnim == 1 && sprite_index != spr_shotgunshoot)
	        sprite_index = spr_shotgunwalk;
	}
	
	if (scr_solid(x + sign(hsp), y) && xscale == 1 && move == 1 && !place_meeting(x + 1, y, obj_slope))
	    movespeed = 0;
	
	if (scr_solid(x + sign(hsp), y) && xscale == -1 && move == -1 && !place_meeting(x - 1, y, obj_slope))
	    movespeed = 0;
	
	jumpstop = 0;
	
	if (!grounded && !key_jump)
	{
	    if (shotgunAnim == 0)
	        sprite_index = spr_fall;
	    else
	        sprite_index = spr_shotgunfall;
	    
	    jumpAnim = 0;
	    state = 66;
	    image_index = 0;
	}
	
	if (key_jump && grounded && !key_down)
	{
	    scr_soundeffect(sfx_jump);
	    sprite_index = (shotgunAnim == 1? spr_shotgunjump : spr_jump)
	    with (instance_create(x, y, obj_highjumpcloud2))
	        image_xscale = other.xscale;
	    vsp = -11;
	    state = 66;
	    image_index = 0;
	    jumpAnim = 1;
	}
	
	if (grounded && input_buffer_jump > 0 && !key_down && !key_attack && vsp > 0)
	{
	    scr_soundeffect(sfx_jump);
		sprite_index = (shotgunAnim == 1? spr_shotgunjump : spr_jump)
	    with (instance_create(x, y, obj_highjumpcloud2))
	        image_xscale = other.xscale;
	    stompAnim = 0;
	    vsp = -11;
	    state = 66;
	    jumpAnim = 1;
	    jumpstop = 0;
	    image_index = 0;
	    freefallstart = 0;
	}
	
	if (((key_down && grounded) || (scr_solid(x, y - 3) && grounded)) && (character == "P" || character == "N" || character == "V"))
	{
	    state = 74;
	    landAnim = 0;
	    crouchAnim = 1;
	    image_index = 0;
	    idle = 0;
	}
	
	if (move != 0)
	{
	    if (movespeed < 6)
	        movespeed += 0.5;
	    else if (floor(movespeed) == 6)
	        movespeed = 6;
	}
	else
	{
	    movespeed = 0;
	}
	
	if (movespeed > 6)
	    movespeed -= 0.1;
	
	momemtum = 0;
	
	if (move != 0)
	{
	    xscale = move;
		image_speed = movespeed / 10
	}
	else
	    image_speed = 0.35;
	if (key_slap2 && (character == "P" || character == "N"))
	{
	    suplexmove = 1;
	    suplexdashsnd = audio_play_sound(sfx_suplexdash, 1, false);
	    state = 29;
	    image_index = 0;
		sprite_index = (shotgunAnim == 1? spr_shotgunsuplexdash : spr_suplexdash)
	    if (character == "P")
	        movespeed = 6;
	    else
	        movespeed = 4;
	}
	
	if (key_shoot2 && shotgunAnim == 0)
	{
	    scr_soundeffect(sfx_breakdance);
	    movespeed = 9;
	    state = 55;
	    sprite_index = spr_player_breakdancestart;
	    
	    with (instance_create(x, y, obj_dashcloud2))
	        image_xscale = other.xscale;
	    
	    breakdance = 35;
	    image_index = 0;
	    instance_create(x, y, obj_swingdinghitbox);
	}
	
	if (key_shoot2 && shotgunAnim == 1)
	{
	    scr_soundeffect(sfx_killingblow);
	    state = 46;
	    
	    with (instance_create(x, y, obj_pistoleffect))
	        image_xscale = other.image_xscale;
	    
	    image_index = 0;
	    sprite_index = spr_shotgunshoot;
	    
	    if (character == "P")
	    {
	        instance_create(x + (image_xscale * 20), y + 20, obj_shotgunbullet);
	        
	        with (instance_create(x + (image_xscale * 20), y + 20, obj_shotgunbullet))
	            spdh = 4;
	        
	        with (instance_create(x + (image_xscale * 20), y + 20, obj_shotgunbullet))
	            spdh = -4;
	    }
	}
	
	if (pogochargeactive == 1 || (pizzapepper > 0 && character == "N"))
	{
	    if (key_attack2)
	    {
	        scr_soundeffect(sfx_noisewoah);
	        state = 73;
	        image_index = 0;
	        
	        if (!key_up)
	            sprite_index = spr_playerN_jetpackstart;
	        else
	            sprite_index = spr_superjumpprep;
	        
	        hsp = 0;
	        vsp = 0;
	    }
	}
	
	if (key_attack && !place_meeting(x + xscale, y, obj_solid) && (character == "P" || character == "V"))
	{
	    if (pizzapepper == 0)
	    {
	        movespeed = 6;
	        sprite_index = spr_mach1;
	        jumpAnim = 1;
	        state = 78;
	        image_index = 0;
	    }
	    else
	    {
	        movespeed = 21;
	        sprite_index = spr_crazyrun;
	        jumpAnim = 1;
	        state = 92;
	        movespeed = 20;
	    }
	}
	
	if (key_attack && character == "N" && pogochargeactive == 0 && !key_slap2 && pizzapepper == 0)
	{
	    sprite_index = spr_playerN_pogostart;
	    image_index = 0;
	    state = 38;
	}
	
	if (character == "S" && move != 0 && !place_meeting(x + xscale, y, obj_solid))
	{
	    movespeed = 6;
	    sprite_index = spr_mach1;
	    jumpAnim = 1;
	    state = 77;
	    image_index = 0;
	}
	
	if (key_attack && !place_meeting(x + xscale, y, obj_solid) && character == "S" && grounded)
	{
	    state = 29;
	    movespeed = 0;
	}
	
	if (key_shoot2 && character == "V" && !instance_exists(obj_dynamite))
	{
	    if (move == 0)
	        movespeed = 0;
	    
	    state = 2;
	    image_index = 0;
	    sprite_index = spr_playerV_dynamitethrow;
	    
	    with (instance_create(x, y, obj_dynamite))
	    {
	        image_xscale = other.xscale;
	        movespeed = 6;
	        vsp = -6;
	    }
	}
	
	if (key_slap2 && character == "V")
	{
	    if (move == 0)
	        movespeed = 0;
	    
	    state = 1;
	    image_index = 0;
	    sprite_index = spr_playerV_revolverstart;
	}
	
	if (move != 0 && (floor(image_index) == 3 || floor(image_index) == 8) && steppy == 0 && character != "V")
	{
	    instance_create(x, y + 43, obj_cloudeffect);
	    steppy = 1;
	}
	
	if (move != 0 && floor(image_index) != 3 && floor(image_index) != 8)
	    steppy = 0;
	
	if (key_taunt2)
		do_taunt()
}
