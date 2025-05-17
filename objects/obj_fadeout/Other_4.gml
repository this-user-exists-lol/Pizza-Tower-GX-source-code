if (room == Titlescreen && obj_player.state == 14)
{
    obj_player.sprite_index = spr_player_machfreefall;
    obj_player.state = 59;
    obj_player.movespeed = 6;
    obj_player.vsp = 5;
    obj_player.xscale = 1;
    obj_player.player_x = 50;
    obj_player.player_y = 50;
}

if (obj_player.state == 90)
{
    with (instance_create(obj_stopsign.x - 480, obj_stopsign.y, obj_taxidud))
        playerid = 3;
}
