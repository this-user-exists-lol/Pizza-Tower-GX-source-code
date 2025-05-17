if (place_meeting(x, y - 1, obj_player))
{
    with (obj_player)
    {
        if (place_meeting(x, y + 1, obj_ladder) && key_down && (state == 74 || (character == "S" && (state == 0 || state == 77))) && place_meeting(x, y + 1, obj_platform))
        {
            y += 5;
            state = 67;
            x = other.x + 16;
            y = floor(y);
            
            if ((y % 2) == 1)
                y -= 1;
        }
    }
}