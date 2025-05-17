if (instance_exists(obj_pausefadeout))
    instance_destroy(obj_pausefadeout);

if (fadealpha > 1)
{
    fadein = 1;
    
    if (instance_exists(obj_player))
    {
        if (custom_level == 0)
        {
            with (obj_player)
            {
                if (place_meeting(x, y, obj_goldendoor))
                    game_restart();
            }
            
            if (room != obj_player.targetRoom)
            {
                room_goto(obj_player.targetRoom);
                
                with (obj_player)
                {
                    if (state == 7)
                        state = 0;
                }
            }
        }
        else
        {
            with (obj_door_editor)
            {
                if (index == other.index && !place_meeting(x, y, obj_player))
                {
                    other.xx = x;
                    other.yy = y;
                    
                    if (object_index == obj_keydoor_editor)
                        alarm[0] = 1;
                }
            }
            
            with (obj_player)
            {
                x = other.xx + 50;
                y = other.yy + 50;
            }
        }
    }
}

if (fadein == 0)
    fadealpha += 0.1;
else if (fadein == 1)
    fadealpha -= 0.1;

if (instance_exists(obj_player))
{
    with (obj_player)
    {
        if (other.fadein == 1 && (obj_player.state == 86 || obj_player.state == 72) && (place_meeting(x, y, obj_door) || place_meeting(x, y, obj_startgate) || place_meeting(x, y, obj_door_editor)))
        {
            state = 69;
            image_index = 0;
        }
        
        if (other.fadein == 1 && obj_player.state == 86 && (obj_player.sprite_index == spr_downpizzabox || obj_player.sprite_index == spr_uppizzabox))
            state = 75;
    }
}

if (fadein == 1 && fadealpha < 0)
    instance_destroy();
