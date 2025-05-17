if (visible == true && obj_player.state != 7)
{
    if (place_meeting(x, y - 1, obj_player))
    {
        with (obj_player)
        {
            if (state == 31)
                state = 25;
            else if (state != 25)
                state = 68;
            
            if (movespeed < 12)
                movespeed = 12;
        }
    }
}

if (visible == false && global.boxhp <= 5)
{
    x = xstart;
    y = ystart;
    visible = true;
    
    repeat (4)
        instance_create(x, y, obj_debris);
    
    if (!audio_is_playing(sfx_breakblock1))
        scr_soundeffect(sfx_breakblock1);
    
    mask_index = sprite_index;
}
