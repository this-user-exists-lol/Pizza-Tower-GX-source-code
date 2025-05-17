var baddie, player, _xs;

baddie = id;
player = other.id;

if (state != 112)
{
    with (other.id)
    {
        if (instakillmove == 1 && baddie.state != 119 && baddie.thrown == 0 && !baddie.invincible)
        {
            if (state == 92 && sprite_index != spr_mach3hit && (character == "P" || character == "V"))
            {
                state = 80;
                sprite_index = spr_hitwall;
                scr_soundeffect(sfx_groundpound);
                scr_soundeffect(sfx_bumpwall);
                hsp = 2.5;
                vsp = -3;
                image_speed = 0.35;
                mach2 = 0;
                image_index = 0;
                instance_create(x - 10, y + 10, obj_bumpeffect);
                
                with (baddie)
                {
                    can_flash = 1;
                    can_flash_count = can_flash_max;
                    state = 109;
                    stunned = 30;
                    hsp = sign(x - player.x) * 2;
                    
                    if (x != player.x)
                        image_xscale = -sign(x - player.x);
                    
                    inv_timer = inv_max;
                    invincible = 1;
                    vsp = -5;
                    hp -= 3;
                    
                    if (hp <= 0)
                        instance_destroy();
                }
                
                instance_create(x, y, obj_slapstar);
                instance_create(x, y, obj_baddiegibs);
                
                with (obj_camera)
                {
                    shake_mag = 20;
                    shake_mag_acc = 40 / room_speed;
                }
            }
            else if (state == 78 && grounded)
            {
                state = 54;
                
                with (baddie)
                {
                    state = 119;
                    
                    if (player.object_index == obj_player)
                        grabbedby = 1;
                    else
                        grabbedby = 2;
                }
            }
            else if (state == 82 && freefallsmash < 11)
            {
                with (baddie)
                {
                    if (state != 119)
                    {
                        state = 119;
                        
                        if (player.object_index == obj_player)
                            grabbedby = 1;
                        else
                            grabbedby = 2;
                    }
                }
            }
            else if (state == 82 && freefallsmash > 10)
            {
                with (baddie)
                {
                    can_flash = 1;
                    can_flash_count = can_flash_max;
                    state = 109;
                    stunned = 30;
                    hsp = sign(x - player.x) * 2;
                    
                    if (x != player.x)
                        image_xscale = -sign(x - player.x);
                    
                    inv_timer = inv_max;
                    invincible = 1;
                    vsp = -5;
                    hp -= 3;
                    
                    if (hp <= 0)
                        instance_destroy();
                }
            }
        }
        
        if (y < other.y && attacking == 0 && sprite_index != spr_player_mach2jump && ((state == 3 && vsp > 0) || state == 66 || state == 77 || state == 54) && vsp > 0 && other.vsp >= 0 && sprite_index != spr_stompprep)
        {
            scr_soundeffect(sfx_stompenemy);
            image_index = 0;
            
            if (key_jump2)
            {
                instance_create(x, y + 50, obj_stompeffect);
                stompAnim = 1;
                vsp = -14;
                
                if (state == 66)
                    sprite_index = spr_stompprep;
            }
            else
            {
                instance_create(x, y + 50, obj_stompeffect);
                stompAnim = 1;
                vsp = -9;
                
                if (state == 66)
                    sprite_index = spr_stompprep;
            }
        }
        
        if (y >= other.y && other.thrown == 0 && other.stuntouchbuffer == 0 && other.vsp > 0 && state != 80 && state != 55 && state != 65 && state != 51 && state != 38 && state != 79 && state != 82 && state != 78 && state != 29 && state != 81 && other.state != 112)
        {
            scr_soundeffect(sfx_bumpwall);
            
            if (state != 34 && state != 77 && state != 76)
                movespeed = 0;
            
            _xs = sign(x - baddie.x);
            
            if (floor(_xs) == 0)
                _xs = xscale;
            
            hsp = 3 * _xs;
            state = 80;
            xscale = -_xs;
            sprite_index = spr_bump;
            vsp = -4;
        }
    }
}
else
{
    with (other.id)
    {
        if (state != 39)
        {
            state = 39;
            sprite_index = spr_squished;
            image_index = 0;
            scr_losepoints();
        }
    }
}
