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