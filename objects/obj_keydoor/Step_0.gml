if ((obj_player.state == 0 || obj_player.state == 77 || obj_player.state == 38 || obj_player.state == 78 || obj_player.state == 92 || obj_player.state == 73) && sprite_index == spr_doorkey && obj_player.key_up && obj_player.grounded && global.key_inv == 1 && place_meeting(x, y, obj_player))
{
    ds_list_add(global.saveroom, id);
    obj_player.state = 72;
    obj_player.image_index = 0;
    image_index = 0;
    sprite_index = spr_doorkeyopen;
    image_speed = 0.35;
    instance_create(x + 50, y + 50, obj_lock);
    global.key_inv = 0;
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
