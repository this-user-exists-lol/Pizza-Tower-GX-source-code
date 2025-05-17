if (sprite_index == spr_taximove)
{
    with (obj_player)
    {
        lastroom = room;
        obj_camera.chargecamera = 0;
        ds_list_add(global.saveroom, id);
        targetDoor = other.targetDoor;
        targetRoom = other.targetRoom;
        image_index = 0;
        mach2 = 0;
        if (!instance_exists(obj_fadeout))
        {
            scr_soundeffect(sfx_door);
            instance_create(x, y, obj_fadeout);
        }
    }
}
