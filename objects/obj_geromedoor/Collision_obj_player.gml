if (!(place_meeting(x, y, obj_doorblocked)))
{
    with (other.id)
    {
        if (key_up && other.image_index = 1 && grounded && (state == 0 || state == 78 || state == 92 || state == 73) && y == (other.y + 50) && (!instance_exists(obj_noisesatellite)) && (!instance_exists(obj_fadeout)) && state != 86 && state != 69 && ((obj_player1.spotlight == 1 && object_index == obj_player1)))
        {
            obj_player1.lastroom = room
            scr_soundeffect(sfx_door)
            obj_camera.chargecamera = 0
            ds_list_add(global.saveroom, id)
            obj_player1.sprite_index = obj_player1.spr_lookdoor
            obj_player1.targetDoor = other.targetDoor
            obj_player1.targetRoom = other.targetRoom
            obj_player.image_index = 1
            obj_player.state = 86
            obj_player.mach2 = 0
            other.visited = 1
            instance_create(x, y, obj_fadeout)
        }
    }
}
