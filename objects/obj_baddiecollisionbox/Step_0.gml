if (!instance_exists(baddieID) && room != custom_lvl_room)
    instance_destroy();

if (instance_exists(baddieID))
{
    x = baddieID.x;
    y = baddieID.y;
    image_xscale = baddieID.image_xscale;
}

if (instance_exists(baddieID) && place_meeting(x, y, obj_player) && obj_player.cutscene == 0 && obj_player.state != 10)
{
    if (baddieID.state != 119)
    {
        with (obj_player)
        {
            if (instance_exists(other.baddieID) && instakillmove == 1 && other.baddieID.state != 119 && other.baddieID.thrown == 0 && !other.baddieID.invincible && other.baddieID.instantkillable)
            {
                if (state == 92 && sprite_index != spr_mach3hit && (character == "P" || character == "V"))
                {
                    if (fightball == 0)
                        sprite_index = spr_mach3hit;
                    
                    image_index = 0;
                }
                
                if (state == 78 && grounded)
                {
                    machpunchAnim = 1;
                    image_index = 0;
                    
                    if (other.baddieID.object_index == obj_treasureguy)
                    {
                        sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4, spr_punch);
                        image_index = 0;
                        state = 65;
                        movespeed = 3;
                        vsp = -3;
                    }
                }
                
                if (state == 92 || (state == 82 && freefallsmash > 10))
                    other.baddieID.hp = 0;
                other.baddieID.grabbedby = 1;
                scr_soundeffect(sfx_punch);
                instance_destroy(other.baddieID);
                global.hit += 1;
                global.combotime = 60;
                
                if (!grounded && state != 82 && key_jump2)
                {
                    if (state == 78 || (state == 92 && fightball == 0))
                        sprite_index = spr_mach2jump;
                    
                    suplexmove = 0;
                    vsp = -11;
                }
            }
            
            if (instance_exists(other.baddieID) && y < other.baddieID.y && attacking == 0 && sprite_index != spr_player_mach2jump && ((state == 3 && vsp > 0) || state == 66 || state == 77 || state == 54) && vsp > 0 && other.baddieID.vsp >= 0 && sprite_index != spr_stompprep && !other.baddieID.invincible && other.baddieID.stompable)
            {
                scr_soundeffect(sfx_stompenemy);
                
                if (x != other.baddieID.x)
                    other.baddieID.image_xscale = -sign(other.baddieID.x - x);
                
                image_index = 0;
                other.baddieID.state = 109;
                
                if (other.baddieID.stunned < 100)
                    other.baddieID.stunned = 100;
                
                if (key_jump2)
                {
                    instance_create(x, y + 50, obj_stompeffect);
                    stompAnim = 1;
                    other.baddieID.image_index = 0;
                    vsp = -14;
                    
                    if (state == 66)
                        sprite_index = spr_stompprep;
                }
                else
                {
                    instance_create(x, y + 50, obj_stompeffect);
                    stompAnim = 1;
                    other.baddieID.image_index = 0;
                    vsp = -9;
                    
                    if (state == 66)
                        sprite_index = spr_stompprep;
                }
            }
            
            if (place_meeting(x, y + 1, other.id) && state == 38 && vsp > 0 && other.baddieID.vsp >= 0 && sprite_index != spr_playerN_pogobounce)
            {
                switch (pogochargeactive)
                {
                    case 0:
                        pogospeedprev = 0;
                        other.baddieID.vsp = -3;
                        scr_soundeffect(sfx_stompenemy);
                        other.baddieID.state = 109;
                        
                        if (other.baddieID.stunned < 100)
                            other.baddieID.stunned = 100;
                        
                        sprite_index = spr_playerN_pogobounce;
                        break;
                    
                    case 1:
                        pogospeedprev = 0;
                        scr_throwenemy();
                        sprite_index = spr_playerN_pogobouncemach;
                        break;
                }
                
                instance_create(x, y + 50, obj_stompeffect);
                image_index = 0;
                movespeed = 0;
                vsp = 0;
            }
            
            if (instance_exists(other.baddieID) && other.baddieID.thrown == 0 && other.baddieID.stuntouchbuffer == 0 && other.baddieID.state != 100 && other.baddieID.vsp > 0 && state != 55 && state != 65 && state != 51 && state != 38 && state != 79 && state != 82 && state != 78 && state != 29 && state != 81 && other.baddieID.state != 112 && other.baddieID.bumpable && !other.baddieID.invincible)
            {
                scr_soundeffect(sfx_bumpwall);
                
                if (state != 34 && state != 77 && state != 76)
                    movespeed = 0;
                
                other.baddieID.stuntouchbuffer = 50;
                
                if (other.baddieID.object_index == obj_pizzaball)
                    global.golfhit += 1;
                
                if (other.baddieID.stunned < 100)
                    other.baddieID.stunned = 100;
                
                if (x != other.baddieID.x)
                    other.baddieID.image_xscale = -sign(other.baddieID.x - x);
                
                other.baddieID.vsp = -5;
                other.baddieID.hsp = -other.baddieID.image_xscale * 2;
                other.baddieID.state = 109;
                other.baddieID.image_index = 0;
            }
            
            if (instance_exists(other.baddieID) && state == 29 && !other.baddieID.invincible)
            {
                if (other.baddieID.thrown == 0 && (character == "P" || character == "N"))
                {
                    movespeed = 0;
                    image_index = 0;
                    sprite_index = spr_haulingstart;
                    state = 54;
                    other.baddieID.state = 119;
                    other.baddieID.grabbedby = 1;
                }
                else
                {
                    if (other.baddieID.thrown == 1 && !key_up)
                    {
                        sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4, spr_punch);
                        other.baddieID.hsp = xscale * 25;
                        other.baddieID.vsp = 0;
                    }
                    else if (!key_up)
                    {
                        sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4, spr_punch);
                        other.baddieID.hsp = xscale * 6;
                        scr_soundeffect(sfx_killingblow);
                        image_index = 0;
                        state = 65;
                        movespeed = 0;
                        other.baddieID.vsp = -6;
                        scr_throwenemy();
                    }
                    else
                    {
                        sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4, spr_punch);
                        other.baddieID.vsp = -14;
                        other.baddieID.hsp = 0;
                    }
                    
                    scr_soundeffect(sfx_killingblow);
                    image_index = 0;
                    state = 65;
                    movespeed = 0;
                    scr_throwenemy();
                }
            }
        }
    }
}