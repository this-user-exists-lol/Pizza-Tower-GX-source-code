function scr_hurtplayer()
{
	var player;
	
	with (argument0)
	{
	    if (global.failcutscene)
	        continue;
	    
	    if (state == 118)
	        continue;
	    
	    if (state == 59)
	        continue;
	    
	    if ((state == 31 || state == 32 || state == 25) && cutscene == 0)
	        continue;
	    
	    if (state == 13)
	        continue;
	    
	    if (state == 34 && hurted == 0)
	        continue;
	    
	    if (state == 21)
	        continue;
	    
	    if (state == 22)
	        continue;
	    
	    if (state == 87)
	        continue;
	    
	    if (state == 5)
	        continue;
	    
	    if (state == 19 || state == 20)
	        continue;
	    
	    if (pizzashield == 1)
	    {
	        pizzashield = 0;
	        
	        with (instance_create(x, y, obj_sausageman_dead))
	            sprite_index = spr_pizzashield_collectible;
	        
	        hsp = -xscale * 4;
	        vsp = -5;
	        state = 80;
	        sprite_index = spr_bump;
	        alarm[8] = 60;
	        alarm[7] = 120;
	        hurted = 1;
	        scr_soundeffect(sfx_pephurt);
	    }
	    else if (state != 81 && state != 119 && hurted == 0 && cutscene == 0 && invtime == 0)
	    {
	        if (character == "V")
	            global.playerhealth -= 25;
	        
	        if (state == 11)
	        {
	            with (instance_create(x, y, obj_sausageman_dead))
	                sprite_index = spr_mortdead;
	            
	            repeat (6)
	            {
	                with (instance_create(x, y, obj_debris))
	                    sprite_index = spr_feather;
	            }
	            
	            grav = 0.5;
	        }
	        
	        if (global.pizzadelivery == 0)
	        {
	            with (instance_create(x, y, obj_smallnumber))
	            {
	                negative = 1;
	                number = "-50";
	            }
	        }
	        
	        if (global.pizzadelivery == 1)
	        {
	            if (global.hp > 1)
	            {
	                global.hp -= 1;
	                
	                with (obj_camera)
	                    healthshaketime = 60;
	            }
	            else
	            {
	                with (obj_music)
	                    arena = 0;
	                
	                vsp = -20;
	                global.hp = 0;
	                global.pizzadelivery = 0;
	                cutscene = 1;
	                
	                with (instance_create(x, y, obj_debris))
	                    sprite_index = spr_healthpickupeaten;
	                
	                with (instance_create(0, 0, obj_cutscene_handler))
	                {
	                    player = other.id;
	                    scene_info = [[210, player], [203, player], [194, player, 696, 0.5, player.xscale], [209, player], [194, player, 697, 0.5, player.xscale], [203, player], [194, player, 698, 0.5, player.xscale], [201, player, 218]];
	                }
	            }
	        }
	        
	        if (state == 119)
				y = obj_player.y;
	        scr_soundeffect(sfx_pephurt);
	        alarm[8] = 100;
	        alarm[7] = 50;
	        hurted = 1;
	        
			tv_text(choose("Ow!", "Oof!", "Ouch!", "Woah!"), 150)
			scr_voice("negative")
	        if (xscale == other.image_xscale)
	            sprite_index = spr_hurtjump;
	        else
	            sprite_index = spr_hurt;
			xscalestretch = 0.05
			yscalestretch = 1
	        movespeed = 8;
	        vsp = -12;
	        timeuntilhpback = 300;
	        instance_create(x, y, obj_spikehurteffect);
	        state = 81;
	        image_index = 0;
	        flash = 1;
	        global.hurtcounter += 1;
	        
	        if (global.pizzadelivery == 0)
	        {
				global.combotime -= 25
	            if (global.collect > 50)
	                global.collect -= 50;
	            else
	                global.collect = 0;
	        }
	        
	        if (global.pizzadelivery == 0)
	        {
	            if (global.collect != 0)
	            {
					obj_hud.fontthing += 5
					obj_hud.shake = 10
					obj_hud.red = 10
	                if (character == "P" || character == "V")
	                {
	                    repeat (10)
	                    {
	                        with (instance_create(x, y, obj_pizzaloss))
	                            sprite_index = choose(spr_shroomcollect, spr_tomatocollect, spr_cheesecollect, spr_sausagecollect, spr_pineapplecollect);
	                    }
	                }
	                else
	                {
	                    repeat (10)
	                        instance_create(x, y, obj_pizzaloss);
	                }
	            }
	        }
	    }
	}
}
