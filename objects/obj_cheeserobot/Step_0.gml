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

if (state == 109 && stunned > 40 && birdcreated == 0)
{
    birdcreated = 1;
    
    with (instance_create(x, y, obj_enemybird))
        ID = other.id;
}

if (state != 109)
    birdcreated = 0;

idlespr = spr_cheeserobot_idle;
stunfallspr = spr_cheeserobot_stun;
walkspr = spr_cheeserobot_walk;
stunspr = spr_cheeserobot_stun;
grabbedspr = spr_cheeserobot_stun;

if (flash == 1 && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed;

if (hp <= 0)
    instance_destroy();

if (state != 119)
    depth = 0;

if (state != 109)
    thrown = 0;

if (bombreset > 0)
    bombreset--;

if (x != obj_player.x && state != 100 && bombreset == 0)
{
    if ((obj_player.x > (x - 400) && obj_player.x < (x + 400)) && (y <= (obj_player.y + 20) && y >= (obj_player.y - 20)))
    {
        if (state == 105 || state == 97)
        {
            scr_sound(sound_enemythrow);
            image_index = 0;
            image_xscale = -sign(x - obj_player.x);
            state = 100;
        }
    }
}
