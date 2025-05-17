if (state != 116)
{
    wave_seconds--;
    
    if (wave_seconds < 0)
    {
        if (wave_minutes > 0)
        {
            wave_seconds = 59;
            wave_minutes--;
        }
        else
        {
            wave_seconds = 0;
            
            with (obj_player)
            {
                targetDoor = "A";
                room = timesuproom;
                state = 44;
                sprite_index = spr_Timesup;
                image_index = 0;
                audio_stop_all();
                scr_soundeffect(mu_timesup);
            }
        }
    }
}

if (state == 114 || state == 113)
    alarm[0] = 60;
