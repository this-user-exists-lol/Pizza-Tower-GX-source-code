var myplayer;

myplayer = obj_player.id;
with (myplayer)
{
    state = 118;
    sprite_index = choose(spr_player_parry1, spr_player_parry2, spr_player_parry3);
    image_index = 0;
    image_speed = 0.35;
	global.combotimepause = 10
    taunttimer = 20;
    movespeed = 8;
    parry_inst = -4;
    parry_count = parry_max;
	with (instance_create((x + (32 * xscale)), y, obj_swordhitbox))
	    playerid = myplayer;
    with (instance_create(x, y, obj_parryeffect))
        image_xscale = other.xscale;
    
    flash = 1;
}

alarm[0] = die_time;
collisioned = 1;
