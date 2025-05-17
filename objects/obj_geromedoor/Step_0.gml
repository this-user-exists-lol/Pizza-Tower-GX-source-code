if ((obj_player.state == 0 || obj_player.state == 77 || obj_player.state == 38 || obj_player.state == 78 || obj_player.state == 92 || obj_player.state == 73) && image_index = 0 && obj_player.key_up && obj_player.grounded && global.gotgerome == 1 && place_meeting(x, y, obj_player))
{
    ds_list_add(global.saveroom, id);
    obj_player.state = 72;
    obj_player.image_index = 0;
    image_index = 1;
	if instance_exists(obj_gerome)
		instance_destroy(obj_gerome)
	instance_create((obj_player1.x - 30), obj_player1.y, obj_geromeopendoor)
    instance_create(x + 50, y + 50, obj_lock);
	instance_create(x, y, obj_pillarjohndefeatflash)
	scr_soundeffect(sfx_unlockdoor)
	scr_soundeffect(sfx_cheer)
	scr_soundeffect(sfx_level100percent)
	audio_group_stop_all(music)
	global.panic = 0
    global.gotgerome = 0;
}
if (floor(obj_player1.image_index) == (obj_player1.image_number - 1) && obj_player1.state == 72)
{
    with (obj_player1)
    {
        obj_player1.targetDoor = other.targetDoor
        obj_player1.targetRoom = other.targetRoom
        if (!instance_exists(obj_fadeout))
            instance_create(x, y, obj_fadeout)
    }
}
if (place_meeting(x, y, obj_doorA))
    targetDoor = "A";

if (place_meeting(x, y, obj_doorB))
    targetDoor = "B";

if (place_meeting(x, y, obj_doorC))
    targetDoor = "C";

if (place_meeting(x, y, obj_doorD))
    targetDoor = "D";

if (place_meeting(x, y, obj_doorE))
    targetDoor = "E";
