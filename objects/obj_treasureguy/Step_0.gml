if (room == rm_editor)
    exit;

switch (state)
{
    case 101:
        scr_enemy_turn();
        break;
    
    case 105:
        scr_enemy_walk();
        break;
    
    case 107:
        scr_enemy_land();
        break;
    
    case 108:
        scr_enemy_hit();
        break;
    
    case 109:
        scr_enemy_stun();
        break;
    
    case 100:
        scr_pizzagoblin_throw();
        break;
    
    case 119:
        scr_enemy_grabbed();
        break;
    
    case 96:
        scr_enemy_rage();
        break;
}

if (state == 109 && stunned > 100 && birdcreated == 0)
{
    birdcreated = 1;
    
    with (instance_create(x, y, obj_enemybird))
        ID = other.id;
}

if (state != 109)
    birdcreated = 0;

if (flash == 1 && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed;

targetplayer = instance_nearest(x, y, obj_player);

if (state == 105)
{
    sprite_index = walkspr;
    hsp = 0;
}

if (state == 97)
{
    if (sprite_index == scaredspr)
    {
        if (image_index > (image_number - 1))
            state = 112;
    }
    else
    {
        sprite_index = spr_treasureguy_idle;
        image_speed = 0.35;
    }
}

if (state != 97 && state != 119 && state != 109 && state != 112 && !running)
{
    if ((x < (targetplayer.x + threshold_x) && x > (targetplayer.x - threshold_x)) && (y < (targetplayer.y + threshold_y) && y > (targetplayer.y - threshold_y)))
    {
        state = 97;
        image_index = 0;
        sprite_index = scaredspr;
        scaredbuffer = scared_max;
        
        if (x != targetplayer.x)
            image_xscale = sign(x - targetplayer.x);
    }
}

if (state == 112)
{
    image_speed = 0.5;
    
    if (hsp != 0)
        sprite_index = spr_treasureguy_escape;
    else
        sprite_index = spr_treasureguy_escape;
    
    if (runmovespeed < runmovespeed_max)
        runmovespeed += accel;
    else
        runmovespeed = runmovespeed_max;
    
    hsp = image_xscale * runmovespeed;
    
    if (grounded)
    {
        if (scr_solid(x + sign(hsp), y))
        {
            if (!jumped)
            {
                vsp = -9;
                jumped = 1;
            }
            else
            {
                runmovespeed = 0;
                image_xscale *= -1;
                jumped = 0;
            }
        }
        else
        {
            jumped = 0;
        }
    }
    
    if (distance_to_object(targetplayer) > idle_threshold)
        state = 105;
}

if (state != 119)
    depth = 0;

if (state != 109)
    thrown = 0;

if (boundbox == 0)
{
    with (instance_create(x, y, obj_baddiecollisionbox))
    {
        sprite_index = other.sprite_index;
        mask_index = other.sprite_index;
        baddieID = other.id;
        other.boundbox = 1;
    }
}
