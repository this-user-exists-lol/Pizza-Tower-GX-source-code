function scr_collide_destructibles()
{
	with (obj_player)
	{
	    if ((state == 66 && sprite_index == spr_playerN_noisebombspinjump) || (state == 38 && pogochargeactive == 1))
	    {
	        with (instance_place(x + xscale, y, obj_destructibles))
	            instance_destroy();
	        
	        with (instance_place(x + hsp + xscale, y, obj_destructibles))
	            instance_destroy();
	        
	        with (instance_place(x, y + vsp + 1, obj_destructibles))
	            instance_destroy();
	        
	        with (instance_place(x, (y + vsp) - 1, obj_destructibles))
	            instance_destroy();
	        
	        with (instance_place(x, y + 1, obj_destructibles))
	            instance_destroy();
	        
	        with (instance_place(x, y - 1, obj_destructibles))
	            instance_destroy();
	    }
	    
	    if (state == 5)
	    {
	        with (instance_place(x + xscale, y, obj_rollblock))
	            instance_destroy();
	    }
	    
	    if (state == 55 || state == 95 || state == 68 || state == 16 || sprite_index == spr_player_barrelroll || state == 76 || state == 78 || state == 92 || state == 45 || state == 25 || state == 5 || state == 15 || state == 65)
	    {
	        if (place_meeting(x + hsp, y, obj_destructibles))
	        {
	            if (character != "V")
	            {
	                with (instance_place(x + hsp, y, obj_destructibles))
	                    instance_destroy();
	                
	                if (state == 78)
	                    machpunchAnim = 1;
	            }
	        }
	    }
	    
	    if (state == 81 && thrown == 1)
	    {
	        if (place_meeting(x - hsp, y, obj_destructibles))
	        {
	            with (instance_place(x - hsp, y, obj_destructibles))
	                instance_destroy();
	        }
	    }
	    
	    if ((state == 31 || state == 51 || state == 15) && vsp > 0)
	    {
	        if (place_meeting(x, y + 1, obj_destructibles))
	        {
	            with (instance_place(x, y + 1, obj_destructibles))
	                instance_destroy();
	        }
	    }
	    
	    if (place_meeting(x, y + 1, obj_destructibleplatform))
	    {
	        with (instance_place(x, y + 1, obj_destructibleplatform))
	        {
	            falling = 1;
	            
	            if (falling == 1)
	                image_speed = 0.35;
	        }
	    }
	    
	    if (vsp <= 0.5 && (state == 66 || state == 38 || state == 24 || state == 9 || state == 71 || state == 78 || state == 92))
	    {
	        if (place_meeting(x, y - 1, obj_destructibles))
	        {
	            with (instance_place(x, y - 1, obj_destructibles))
	            {
	                instance_destroy();
	                
	                with (other.id)
	                {
	                    if (state != 71 && state != 24)
	                        vsp = 0;
	                    
	                    if (state == 71)
	                        vsp = -11;
	                }
	            }
	        }
	    }
	    
	    if (vsp >= 0 && (state == 82 || state == 85))
	    {
	        if (place_meeting(x, y + vsp + 2, obj_destructibles))
	        {
	            with (instance_place(x, y + vsp + 2, obj_destructibles))
	            {
	                with (obj_player)
	                {
	                    if (place_meeting(x, y + vsp + 2, obj_bigdestructibles))
	                    {
	                        if (shotgunAnim == 0)
	                            sprite_index = spr_bodyslamland;
	                        else
	                            sprite_index = spr_shotgunjump2;
	                        
	                        state = 85;
	                        image_index = 0;
	                    }
	                }
	                
	                instance_destroy();
	            }
	        }
	    }
	    
	    if (state == 82 || state == 85)
	    {
	        if (place_meeting(x, y + 1, obj_metalblock) && freefallsmash > 10)
	        {
	            with (instance_place(x, y + 1, obj_metalblock))
	                instance_destroy();
	        }
	    }
	    
	    if (state == 29 || state == 55)
	    {
	        with (obj_destructibles)
	        {
	            if (place_meeting(x - obj_player.hsp, y, obj_player))
	            {
	                with (obj_player)
	                {
	                    if (place_meeting(x + hsp, y, obj_bigdestructibles))
	                    {
	                        if (shotgunAnim == 0)
	                        {
	                            sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4, spr_punch);
	                            image_index = 0;
	                            state = 65;
	                            instance_destroy(other.id);
	                        }
	                        else
	                        {
	                            state = 46;
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
	                            
	                            instance_destroy(other.id);
	                        }
	                    }
	                    else if (other.object_index != obj_bigdestructibles)
	                    {
	                        instance_destroy(other.id);
	                    }
	                }
	            }
	        }
	    }
	    
	    with (obj_baddieparentNEW)
	    {
	        if (place_meeting(x + hsp, y, obj_destructibles) && enemystate = enemy_states.thrown)
	            instance_destroy(instance_place(x + hsp, y, obj_destructibles));
	        
	        if (place_meeting(x, y + vsp, obj_destructibles) && enemystate = enemy_states.thrown)
	            instance_destroy(instance_place(x + vsp, y, obj_destructibles));
	    }
	}
}