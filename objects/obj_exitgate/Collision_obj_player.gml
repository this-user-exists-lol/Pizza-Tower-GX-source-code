var roomname, namestring;

if (image_index == 1 && global.panic == 0)
{
    with (obj_player)
    {
        if (state == 69 && floor(image_index) == (image_number - 2))
        {
            scr_soundeffect(sfx_groundpound);
            
            with (obj_player)
            {
				xscalestretch = 0.05
                sprite_index = spr_Timesup;
                image_index = 0;
                
                with (obj_camera)
                {
                    shake_mag = 10;
                    shake_mag_acc = 30 / room_speed;
                }
            }
            other.image_index = 0;
            ds_list_add(global.saveroom, other.id);
        }
    }
}

with (obj_player)
{
    if (grounded && (x > (other.x - 160) && x < (other.x + 160)) && key_up && (state == 0 || state == 77 || state == 78 || state == 92) && (global.panic == 1 || global.snickchallenge == 1))
		end_level()
}
