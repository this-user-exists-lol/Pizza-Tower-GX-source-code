switch (state)
{
    case 97:
        scr_enemy_idle();
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

if (hp <= 0)
    instance_destroy();

if (cigar == 1)
{
    landspr = spr_sausageman_land;
    idlespr = spr_sausageman_idle;
    fallspr = spr_sausageman_fall;
    hitceillingspr = spr_sausageman_hitceilling;
    stunfalltransspr = spr_sausageman_stunfalltrans;
    hitwallspr = spr_sausageman_hitwall;
    stunfallspr = spr_sausageman_stunfall;
    rollingspr = spr_sausageman_rolling;
    walkspr = spr_sausageman_walk;
    turnspr = spr_sausageman_turn;
    flyingspr = spr_sausageman_flying;
    hitspr = spr_sausageman_hit;
    stunlandspr = spr_sausageman_stunland;
    stunspr = spr_sausageman_stun;
    recoveryspr = spr_sausageman_recovery;
    stompedspr = spr_sausageman_stomped;
    grabbedspr = spr_sausageman_grabbed;
}

if (cigar == 0)
{
    landspr = spr_sausagemannocigar_land;
    idlespr = spr_sausagemannocigar_idle;
    fallspr = spr_sausagemannocigar_fall;
    hitceillingspr = spr_sausagemannocigar_hitceilling;
    stunfalltransspr = spr_sausagemannocigar_stunfalltrans;
    hitwallspr = spr_sausagemannocigar_hitwall;
    stunfallspr = spr_sausagemannocigar_stunfall;
    rollingspr = spr_sausagemannocigar_rolling;
    walkspr = spr_sausagemannocigar_walk;
    turnspr = spr_sausagemannocigar_turn;
    flyingspr = spr_sausagemannocigar_flying;
    hitspr = spr_sausagemannocigar_hit;
    stunlandspr = spr_sausagemannocigar_stunland;
    stunspr = spr_sausagemannocigar_stun;
    recoveryspr = spr_sausagemannocigar_recovery;
    stompedspr = spr_sausagemannocigar_stomped;
    grabbedspr = spr_sausagemannocigar_grabbed;
}

if (cigar == 1 && cigarcreate == 0 && (state == 97 || state == 105 || state == 101 || state == 107))
{
    cigarcreate = 1;
    
    with (instance_create(x, y, obj_sausagemancigar))
        ID = other.id;
}

if (state != 119)
    depth = 0;

if (state != 109)
    thrown = 0;

if (flash == 1 && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed;
