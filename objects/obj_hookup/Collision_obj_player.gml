with (obj_player)
{
    if (key_up && place_meeting(x, y, other.id) && ladderbuffer == 0 && (state == 0 || state == 38 || state == 78 || state == 92 || state == 77 || state == 37 || state == 66 || state == 40) && state != 81 && state != 79 && state != 82 && state != 85)
    {
        other.hooked = 1;
        other.playerid = object_index;
        mach2 = 0;
        state = 67;
        x = other.x + 16;
        y = floor(y);
        
        if ((y % 2) == 1)
            y -= 1;
    }
}