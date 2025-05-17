if (room == rm_editor)
    exit;

if (index == -1)
    exit;

if ((obj_player.state == 0 || obj_player.state == 77 || obj_player.state == 38 || obj_player.state == 78 || obj_player.state == 92 || obj_player.state == 73) && sprite_index == spr_doorkey && obj_player.key_up && obj_player.grounded && global.key_inv == 1 && place_meeting(x, y, obj_player))
{
    obj_player.state = 72;
    obj_player.image_index = 0;
    
    if (instance_exists(obj_player2) && global.coop == 1)
    {
        obj_player2.x = obj_player.x;
        obj_player2.y = obj_player.y;
        obj_player2.state = 72;
        obj_player2.image_index = 0;
    }
    
    image_index = 0;
    sprite_index = spr_doorkeyopen;
    image_speed = 0.35;
    instance_create(x + 50, y + 50, obj_lock);
    global.key_inv = 0;
}

if (instance_exists(obj_player2))
{
    if (obj_player2.state == 0 && obj_player2.grounded && obj_player2.key_up && global.key_inv == 1 && place_meeting(x, y, obj_player2))
    {
        obj_player2.state = 72;
        obj_player2.image_index = 0;
        obj_player.x = obj_player2.x;
        obj_player.y = obj_player2.y;
        obj_player.state = 72;
        obj_player.image_index = 0;
        image_index = 0;
        sprite_index = spr_doorkeyopen;
        image_speed = 0.35;
        instance_create(x + 50, y + 50, obj_lock);
        global.key_inv = 0;
    }
}

if (sprite_index == spr_doorkeyopen && floor(image_index) == 2)
    image_speed = 0;

if (floor(obj_player.image_index) == (obj_player.image_number - 4) && obj_player.state == 72)
    obj_player.state = 0;

if (sprite_index == spr_doorkeyopen && image_speed == 0)
{
    opened = 1;
    sprite_index = spr_doorvisited;
}
