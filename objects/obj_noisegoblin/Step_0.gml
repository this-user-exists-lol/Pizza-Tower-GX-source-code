if (room == rm_editor)
    exit;

switch (state)
{
    case 97:
        scr_enemy_idle();
        break;
    
    case 99:
        scr_enemy_charge();
        break;
    
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
}

if (state == 109 && stunned > 100 && birdcreated == 0)
{
    birdcreated = 1;
    
    with (instance_create(x, y, obj_enemybird))
        ID = other.id;
}

if (state != 109)
    birdcreated = 0;

scr_scareenemy();

if (flash == 1 && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed;

if (state != 119)
    depth = 0;

if (state != 109)
    thrown = 0;

if (bombreset > 0)
    bombreset--;

if (sprite_index == spr_archergoblin_shoot)
    image_xscale = -sign(x - obj_player.x);

if (x != obj_player.x && obj_player.state != 34 && state != 100 && bombreset == 0 && grounded)
{
    if ((obj_player.x > (x - 200) && obj_player.x < (x + 200)) && (y <= (obj_player.y + 200) && y >= (obj_player.y - 200)))
    {
        if (state == 105 || state == 97)
        {
            sprite_index = spr_archergoblin_shoot;
            image_index = 0;
            image_xscale = -sign(x - obj_player.x);
            state = 100;
        }
    }
}

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
