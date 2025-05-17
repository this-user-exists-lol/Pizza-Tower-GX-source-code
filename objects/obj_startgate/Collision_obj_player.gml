with (obj_player)
{
    if (place_meeting(x, y, other.id) && key_up && grounded && (state == 0 || state == 77 || state == 78 || state == 92) && !instance_exists(obj_noisesatellite) && !instance_exists(obj_fadeout) && state != 72 && state != 69 && obj_player.spotlight == 1)
    {
        audio_stop_all();
        backtohubstartx = x;
        backtohubstarty = y;
        backtohubroom = room;
        mach2 = 0;
        obj_camera.chargecamera = 0;
        image_index = 0;
        state = 72;
    }
}

if ((floor(obj_player.image_index) == (obj_player.image_number - 1) && obj_player.state == 72))
{
    with (obj_player)
    {
        if (other.level == "snickchallenge")
        {
            global.wave = 0;
            global.maxwave = ((global.minutes * 60) + global.seconds) * 60;
            
            if (global.panicbg)
                scr_panicbg_init();
            
            global.snickchallenge = 1;
            global.collect = 10000;
            
            with (obj_camera)
            {
                alarm[1] = 60;
                global.seconds = 59;
                global.minutes = 9;
            }
        }
        
        obj_music.fadeoff = 0;
        targetDoor = other.targetDoor;
        targetRoom = other.targetRoom;
        
        if (!instance_exists(obj_fadeout))
            instance_create(x, y, obj_fadeout);
    }
}
