function scr_player_mach3()
{
	switch (character)
	{
	    case "P":
	        if (windingAnim < 2000)
	            windingAnim++;
	        
	        if (!place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2))
	            hsp = xscale * movespeed;
	        else if (place_meeting(x, y + 1, obj_railh))
	            hsp = (xscale * movespeed) - 5;
	        else if (place_meeting(x, y + 1, obj_railh2))
	            hsp = (xscale * movespeed) + 5;
	        
	        mach2 = 100;
	        momemtum = 1;
	        move = key_right + key_left;
	        move2 = key_right2 + key_left2;
	        if (movespeed < 20 && move == xscale)
	        {
	            movespeed += 0.025;
	            
	            if (!instance_exists(crazyruneffectid) && grounded)
	            {
	                with (instance_create(x, y, obj_crazyruneffect))
	                {
	                    playerid = other.object_index;
	                    other.crazyruneffectid = id;
	                }
	                
	                if (sprite_index == spr_crazyrun)
	                {
	                    with (instance_create(x, y, obj_dashcloud))
	                    {
	                        image_xscale = other.xscale;
	                        sprite_index = spr_flamecloud;
	                    }
	                }
	            }
	        }
	        else if (movespeed > 12 && move != xscale && pizzapepper == 0)
	        {
	            movespeed -= 0.025;
	        }
	        
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
	            scr_soundeffect(sfx_jump);
	            
	            if (sprite_index != spr_fightball)
	            {
	                image_index = 0;
	                sprite_index = spr_mach3jump;
	            }
	            
	            if (character == "P")
	                vsp = -11;
	            else
	                vsp = -13;
	        }
	        
	        if (fightball == 0)
	        {
	            if (sprite_index == spr_mach3jump && floor(image_index) == (image_number - 1))
	                sprite_index = spr_mach4;
	            
	            if (floor(image_index) == (image_number - 1) && (sprite_index == spr_rollgetup || sprite_index == spr_mach3hit))
	                sprite_index = spr_mach4;
	            
	            if ((sprite_index == spr_mach2jump || sprite_index == spr_player_Sjumpcancelend) && (grounded && vsp > 0))
	                sprite_index = spr_mach4;
	            if (movespeed > 16 && sprite_index != spr_crazyrun)
	            {
	                flash = 1;
	                sprite_index = spr_crazyrun;
	            }
	            else if (movespeed <= 16 && sprite_index == spr_crazyrun)
	            {
	                sprite_index = spr_mach4;
	            }
	        }
	        
	        if (sprite_index == spr_crazyrun && !instance_exists(crazyruneffectid))
	        {
	            with (instance_create(x, y, obj_crazyrunothereffect))
	            {
	                playerid = other.object_index;
	                other.crazyruneffectid = id;
	            }
	        }
	        
	        if (sprite_index == spr_mach4 || sprite_index == spr_fightball)
	            image_speed = 0.4;
	        
	        if (sprite_index == spr_crazyrun)
	            image_speed = 0.75;
	        
	        if (sprite_index == spr_rollgetup || sprite_index == spr_mach3hit)
	            image_speed = 0.4;
	        
	        if (key_jump)
	            input_buffer_jump = 0;
	        
	        if (((!key_attack && fightball == 0) && grounded && (character == "P" || character == "N")) || ((character == "S" && (move == 0 || move != xscale) && grounded) && fightball == 0))
	        {
	            sprite_index = spr_machslidestart;
	            scr_soundeffect(sfx_break);
	            state = 79;
	            image_index = 0;
	        }
	        
	        if (move == -xscale && grounded && (character == "P" || character == "N") && fightball == 0)
	        {
	            scr_soundeffect(sfx_machslideboost);
	            sprite_index = spr_mach3boost;
	            state = 79;
	            image_index = 0;
	        }
			if (key_slap2 && (character == "P" || character == "N"))
			{
			    suplexmove = 1;
			    suplexdashsnd = audio_play_sound(sfx_suplexdash, 1, false);
			    state = 29;
			    image_index = 0;
				sprite_index = (shotgunAnim == 1? spr_shotgunsuplexdash : spr_suplexdash)
			}
	        if (key_down &&  fightball == 0 && !place_meeting(x, y, obj_dashpad))
	        {
	            with (instance_create(x, y, obj_jumpdust))
	                image_xscale = other.xscale;
	            
	            flash = 0;
	            state = 45;
	            vsp = 10;
				sprite_index = (grounded? spr_machroll : spr_dive)
	        }
	        if ((!grounded && place_meeting(x + hsp, y, obj_solid) && !place_meeting(x + hsp, y, obj_destructibles) && !place_meeting(x + hsp, y, obj_metalblock) && !place_meeting(x + sign(hsp), y, obj_slope)) || (grounded && place_meeting(x + hsp, y - 32, obj_solid) && !place_meeting(x + hsp, y, obj_destructibles) && !place_meeting(x + hsp, y, obj_metalblock) && place_meeting(x, y + 1, obj_slope)))
	        {
				ledge_bump(32, (abs(hsp) + 1))
	            wallspeed = movespeed;
	            state = 24;
	        }
	        
	        if (grounded && (place_meeting(x + hsp, y, obj_solid) && !scr_slope() && !place_meeting(x + hsp, y, obj_destructibles) && !place_meeting(x + hsp, y, obj_metalblock)))
	        {
	            if (fightball == 0)
	            {
	                sprite_index = spr_hitwall;
	                scr_soundeffect(sfx_groundpound);
	                scr_soundeffect(sfx_bumpwall);
	                
	                with (obj_camera)
	                {
	                    shake_mag = 20;
	                    shake_mag_acc = 40 / room_speed;
	                }
	                
	                hsp = 0;
	                image_speed = 0.35;
					xscalestretch = 0.05
					yscalestretch = 1
	                flash = 0;
	                state = 80;
	                hsp = -5 * xscale;
	                vsp = -5;
	                mach2 = 0;
	                image_index = 0;
	                instance_create(x, y, obj_bumpeffect);
	            }
			}
	        break;
	    
	    case "V":
	        if (windingAnim < 2000)
	            windingAnim++;
	        
	        if (!place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2))
	            hsp = xscale * movespeed;
	        else if (place_meeting(x, y + 1, obj_railh))
	            hsp = (xscale * movespeed) - 5;
	        else if (place_meeting(x, y + 1, obj_railh2))
	            hsp = (xscale * movespeed) + 5;
	        
	        mach2 = 100;
	        momemtum = 1;
	        move = key_right + key_left;
	        move2 = key_right2 + key_left2;
	        if (movespeed < 24 && move == xscale)
	        {
	            if (character == "P")
	                movespeed += 0.1;
	            else
	                movespeed += 0.05;
	            
	            if (!instance_exists(crazyruneffectid) && grounded)
	            {
	                with (instance_create(x, y, obj_crazyruneffect))
	                {
	                    playerid = other.object_index;
	                    other.crazyruneffectid = id;
	                }
	                
	                if (sprite_index == spr_crazyrun)
	                {
	                    with (instance_create(x, y, obj_dashcloud))
	                    {
	                        image_xscale = other.xscale;
	                        sprite_index = spr_flamecloud;
	                    }
	                }
	            }
	        }
	        else if (movespeed > 12 && move != xscale && pizzapepper == 0)
	        {
	            movespeed -= 0.1;
	        }
	        
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
	            scr_soundeffect(sfx_jump);
	            
	            if (sprite_index != spr_fightball)
	            {
	                image_index = 0;
	                sprite_index = spr_mach3jump;
	            }
	            
	            vsp = -11;
	        }
	        
	        if (fightball == 0)
	        {
	            if (sprite_index == spr_mach3jump && floor(image_index) == (image_number - 1))
	                sprite_index = spr_mach4;
	            
	            if (floor(image_index) == (image_number - 1) && (sprite_index == spr_rollgetup || sprite_index == spr_mach3hit))
	                sprite_index = spr_mach4;
	            
	            if (sprite_index == spr_mach2jump && grounded && vsp > 0)
	                sprite_index = spr_mach4;
	            
	            if (movespeed > 20 && sprite_index != spr_crazyrun)
	            {
	                flash = 1;
	                sprite_index = spr_crazyrun;
	            }
	            else if (movespeed <= 20 && sprite_index == spr_crazyrun)
	            {
	                sprite_index = spr_mach4;
	            }
	        }
	        
	        if (sprite_index == spr_crazyrun && !instance_exists(crazyruneffectid))
	        {
	            with (instance_create(x, y, obj_crazyrunothereffect))
	            {
	                playerid = other.object_index;
	                other.crazyruneffectid = id;
	            }
	        }
	        
	        if (sprite_index == spr_mach4 || sprite_index == spr_fightball)
	            image_speed = 0.4;
	        
	        if (sprite_index == spr_crazyrun)
	            image_speed = 0.75;
	        
	        if (sprite_index == spr_rollgetup || sprite_index == spr_mach3hit)
	            image_speed = 0.4;
	        
	        if (key_jump)
	            input_buffer_jump = 0;
	        
	        if (((!key_attack && fightball == 0) && grounded) || ((character == "S" && (move == 0 || move != xscale) && grounded) && fightball == 0))
	        {
	            sprite_index = spr_machslidestart;
	            scr_soundeffect(sfx_break);
	            state = 79;
	            image_index = 0;
	        }
	        
	        if (move == -xscale && grounded && fightball == 0)
	        {
	            scr_soundeffect(sfx_machslideboost);
	            sprite_index = spr_mach3boost;
	            state = 79;
	            image_index = 0;
	        }
	        
	        if (key_down && fightball == 0 && !place_meeting(x, y, obj_dashpad))
	        {
	            with (instance_create(x, y, obj_jumpdust))
	                image_xscale = other.xscale;
	            
	            flash = 0;
	            state = 45;
	            vsp = 10;
	        }
	        
	        if ((!grounded && place_meeting(x + hsp, y, obj_solid) && !place_meeting(x + sign(hsp), y, obj_slope)) || (grounded && place_meeting(x + hsp, y - 32, obj_solid) && place_meeting(x, y + 1, obj_slope)))
	        {
	            wallspeed = 10;
	            state = 24;
	        }
	        
	        if ((scr_solid(x + 1, y) && xscale == 1) && !scr_slope() && (!place_meeting(x + sign(hsp), y, obj_slope) || place_meeting(x + sign(hsp), y, obj_solid)) && (grounded || fightball == 1))
	        {
	            if (fightball == 0)
	            {
	                sprite_index = spr_hitwall;
	                scr_soundeffect(sfx_groundpound);
	                scr_soundeffect(sfx_bumpwall);
	                
	                with (obj_camera)
	                {
	                    shake_mag = 20;
	                    shake_mag_acc = 40 / room_speed;
	                }
	                
	                hsp = 0;
	                image_speed = 0.35;
	                
	                with (obj_baddie)
	                {
	                    if (point_in_rectangle(x, y, __view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0), __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0)))
	                    {
	                        stun = 1;
	                        alarm[0] = 200;
	                        ministun = 0;
	                        vsp = -5;
	                        hsp = 0;
	                    }
	                }
	                
	                flash = 0;
	                state = 80;
	                hsp = -2.5;
	                vsp = -3;
	                mach2 = 0;
	                image_index = 0;
	                instance_create(x + 10, y + 10, obj_bumpeffect);
	            }
	            else if (fightball == 1)
	            {
	                with (obj_player)
	                {
	                    sprite_index = spr_hitwall;
	                    scr_soundeffect(sfx_groundpound);
	                    scr_soundeffect(sfx_bumpwall);
	                    
	                    with (obj_camera)
	                    {
	                        shake_mag = 20;
	                        shake_mag_acc = 40 / room_speed;
	                    }
	                    
	                    hsp = 0;
	                    image_speed = 0.35;
	                    
	                    with (obj_baddie)
	                    {
	                        if (point_in_rectangle(x, y, __view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0), __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0)))
	                        {
	                            stun = 1;
	                            alarm[0] = 200;
	                            ministun = 0;
	                            vsp = -5;
	                            hsp = 0;
	                        }
	                    }
	                    
	                    flash = 0;
	                    state = 80;
	                    hsp = -2.5;
	                    vsp = -3;
	                    mach2 = 0;
	                    image_index = 0;
	                    instance_create(x + 10, y + 10, obj_bumpeffect);
	                }
	                
	                fightball = 0;
	            }
	        }
	        
	        if ((scr_solid(x - 1, y) && xscale == -1) && !scr_slope() && (!place_meeting(x + sign(hsp), y, obj_slope) || place_meeting(x + sign(hsp), y, obj_solid)) && (grounded || fightball == 1))
	        {
	            if (fightball == 0)
	            {
	                sprite_index = spr_hitwall;
	                scr_soundeffect(sfx_groundpound);
	                scr_soundeffect(sfx_bumpwall);
	                
	                with (obj_camera)
	                {
	                    shake_mag = 20;
	                    shake_mag_acc = 40 / room_speed;
	                }
	                
	                hsp = 0;
	                image_speed = 0.35;
	                
	                with (obj_baddie)
	                {
	                    if (point_in_rectangle(x, y, __view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0), __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0)))
	                    {
	                        stun = 1;
	                        alarm[0] = 200;
	                        ministun = 0;
	                        vsp = -5;
	                        hsp = 0;
	                    }
	                }
	                
	                flash = 0;
	                state = 80;
	                hsp = 2.5;
	                vsp = -3;
	                mach2 = 0;
	                image_index = 0;
	                instance_create(x - 10, y + 10, obj_bumpeffect);
	            }
	            else if (fightball == 1)
	            {
	                with (obj_player)
	                {
	                    sprite_index = spr_hitwall;
	                    scr_soundeffect(sfx_groundpound);
	                    scr_soundeffect(sfx_bumpwall);
	                    
	                    with (obj_camera)
	                    {
	                        shake_mag = 20;
	                        shake_mag_acc = 40 / room_speed;
	                    }
	                    
	                    hsp = 0;
	                    image_speed = 0.35;
	                    
	                    with (obj_baddie)
	                    {
	                        if (point_in_rectangle(x, y, __view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0), __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0)))
	                        {
	                            stun = 1;
	                            alarm[0] = 200;
	                            ministun = 0;
	                            vsp = -5;
	                            hsp = 0;
	                        }
	                    }
	                    
	                    flash = 0;
	                    state = 80;
	                    hsp = -2.5;
	                    vsp = -3;
	                    mach2 = 0;
	                    image_index = 0;
	                    instance_create(x + 10, y + 10, obj_bumpeffect);
	                }
	                
	                fightball = 0;
	            }
	        }
	        
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
	        
	        break;
	    
	    case "N":
	        hsp = xscale * movespeed;
	        move = key_right + key_left;
	        
	        if (fightball == 0)
	            vsp = 0;
	        
	        if (key_up && fightball == 0)
	            vsp = -3;
	        
	        if (key_down && fightball == 0)
	            vsp = 3;
	        
	        if (movespeed < 24 && move == xscale)
	        {
	            movespeed += 0.1;
	            
	            if (!instance_exists(crazyruneffectid) && grounded)
	            {
	                with (instance_create(x, y, obj_crazyruneffect))
	                {
	                    playerid = other.object_index;
	                    other.crazyruneffectid = id;
	                }
	                
	                if (sprite_index == spr_crazyrun)
	                {
	                    with (instance_create(x, y, obj_dashcloud))
	                    {
	                        image_xscale = other.xscale;
	                        sprite_index = spr_flamecloud;
	                    }
	                }
	            }
	        }
	        else if (movespeed > 12 && move != xscale && pizzapepper == 0)
	        {
	            movespeed -= 0.1;
	        }
	        
	        if (key_attack2 && character == "N" && fightball == 0)
	        {
	            sprite_index = spr_playerN_pogostart;
	            image_index = 0;
	            state = 38;
	            pogospeed = movespeed;
	        }
	        
	        if (fightball == 0)
	        {
	            if (movespeed > 20 && sprite_index != spr_crazyrun)
	            {
	                flash = 1;
	                sprite_index = spr_crazyrun;
	            }
	            else if (movespeed <= 20 && sprite_index == spr_crazyrun)
	            {
	                sprite_index = spr_playerN_jetpackboost;
	            }
	        }
	        
	        if (character == "N" && key_jump2 && fightball == 0)
	        {
	            scr_soundeffect(sfx_jump);
	            scr_soundeffect(sfx_woosh);
	            jumpstop = 0;
	            vsp = -15;
	            state = 66;
	            sprite_index = spr_playerN_noisebombspinjump;
	            image_index = 0;
	            
	            with (instance_create(x, y, obj_jumpdust))
	                image_xscale = other.xscale;
	        }
	        
	        if (key_down && fightball == 0 && !place_meeting(x, y, obj_dashpad) && grounded)
	        {
	            with (instance_create(x, y, obj_jumpdust))
	                image_xscale = other.xscale;
	            
	            flash = 0;
	            sprite_index = spr_playerN_jetpackslide;
	            state = 45;
	        }
	        
	        if (!key_jump2 && jumpstop == 0 && vsp < 0.5 && fightball == 1)
	        {
	            vsp /= 10;
	            jumpstop = 1;
	        }
	        
	        if (grounded && vsp > 0 && fightball == 1)
	            jumpstop = 0;
	        
	        if (input_buffer_jump > 0 && grounded && !(move == 1 && xscale == -1) && !(move == -1 && xscale == 1) && fightball == 1)
	        {
	            scr_soundeffect(sfx_jump);
	            
	            if (sprite_index != spr_fightball)
	            {
	                image_index = 0;
	                sprite_index = spr_mach3jump;
	            }
	            
	            vsp = -11;
	        }
	        
	        if (scr_solid(x + sign(hsp), y) && (!place_meeting(x + sign(hsp), y, obj_slope) || place_meeting(x + sign(hsp), y, obj_solid)) && (!place_meeting(x + sign(hsp), y, obj_metalblock) && character != "V") && (!place_meeting(x + sign(hsp), y, obj_destructibles) && character != "V") && !place_meeting(x + sign(hsp), y, obj_hungrypillar))
	        {
	            sprite_index = spr_hitwall;
	            scr_soundeffect(sfx_groundpound);
	            scr_soundeffect(sfx_bumpwall);
	            
	            with (obj_camera)
	            {
	                shake_mag = 20;
	                shake_mag_acc = 40 / room_speed;
	            }
	            
	            hsp = 0;
	            image_speed = 0.35;
	            
	            with (obj_baddie)
	            {
	                if (point_in_rectangle(x, y, __view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0), __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0)))
	                {
	                    stun = 1;
	                    alarm[0] = 200;
	                    ministun = 0;
	                    vsp = -5;
	                    hsp = 0;
	                }
	            }
	            
	            flash = 0;
	            state = 80;
	            hsp = 2.5;
	            vsp = -3;
	            mach2 = 0;
	            image_index = 0;
	            instance_create(x - 10, y + 10, obj_bumpeffect);
	        }
	        
	        break;
	}
	
	if (!instance_exists(dashcloudid) && grounded && !place_meeting(x, y + 1, obj_water))
	{
	    with (instance_create(x, y, obj_superdashcloud))
	    {
	        if (other.fightball == 1)
	            instance_create(obj_player.x, obj_player.y, obj_slapstar);
	        
	        image_xscale = other.xscale;
	        other.dashcloudid = id;
	    }
	}
	
	if (!instance_exists(dashcloudid) && grounded && place_meeting(x, y + 1, obj_water))
	{
	    with (instance_create(x, y, obj_superdashcloud))
	    {
	        if (other.fightball == 1)
	            instance_create(obj_player.x, obj_player.y, obj_slapstar);
	        
	        image_xscale = other.xscale;
	        sprite_index = spr_watereffect;
	        other.dashcloudid = id;
	    }
	}
	
	if (key_taunt2 && fightball == 0)
		do_taunt()
	
	if (!instance_exists(chargeeffectid))
	{
	    with (instance_create(x, y, obj_chargeeffect))
	    {
	        playerid = other.object_index;
	        other.chargeeffectid = id;
	    }
	}
	
	if (sprite_index == spr_mach4 || sprite_index == spr_fightball)
	    image_speed = 0.4;
	
	if (sprite_index == spr_crazyrun)
	    image_speed = 0.75;
	
	if (sprite_index == spr_rollgetup || sprite_index == spr_mach3hit)
	    image_speed = 0.4;
	
	if (key_up && fightball == 0 && character == "P" && grounded)
	{
	    sprite_index = spr_superjumpprep;
	    state = 73;
	    hsp = 0;
	    image_index = 0;
	}
}
