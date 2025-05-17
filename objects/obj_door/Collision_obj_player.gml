if (!place_meeting(x, y, obj_doorblocked))
{
    with (other.id)
    {
        if (key_up && grounded && (state == 0 || state == 77 || state == 78 || state == 38 || state == 92 || state == 73) && y == (other.y + 50) && !instance_exists(obj_noisesatellite) && !instance_exists(obj_fadeout) && state != 86 && state != 69 && ((obj_player.spotlight == 1 && object_index == obj_player1)))
        {
            scr_soundeffect(sfx_door);
            obj_camera.chargecamera = 0;
            ds_list_add(global.saveroom, id);
			obj_player.lastroom = room;
	        obj_player.sprite_index = spr_lookdoor;
	        obj_player.targetDoor = other.targetDoor;
	        obj_player.targetRoom = other.targetRoom;
	        obj_player.image_index = 0;
	        obj_player.state = 86;
	        obj_player.mach2 = 0;
            other.visited = 1;
            instance_create(x, y, obj_fadeout);
        }
    }
}
