y = Wave((ystart - 5), (ystart + 5), 2, 2)
if (place_meeting(x, y, obj_player) && player == 0)
{
    with (obj_player)
    {
        treasure_x = x;
        treasure_y = y;
        treasure_room = room;
        
        if (grounded)
        {
            ds_list_add(global.saveroom, other.id);
            global.treasure = 1;
            hsp = 0;
            vsp = 0;
            other.alarm[0] = 150;
            state = 30;
            scr_soundeffect(sfx_treasuregot);
            other.x = obj_player.x;
            other.y = obj_player.y - 35;
			instance_create(other.x , other.y, obj_treasureeffect)
			tv_text("You got the level's secret treasure!", 150)
            other.player = 1;
			depth = 90000000000000000000000000
            ini_close();
        }
    }
}