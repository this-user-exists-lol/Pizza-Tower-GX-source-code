with (obj_player)
{
    if (state == 5 || state == 25 || state == 45 || state == 92 || state == 78)
    {
        other.image_speed = 0.35;
        
        if (xscale != other.image_xscale)
            xscale = other.image_xscale;
    }
}
