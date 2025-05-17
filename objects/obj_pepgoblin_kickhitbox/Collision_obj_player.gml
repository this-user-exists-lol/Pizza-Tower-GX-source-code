var b;

with (other.id)
{
    if (character == "V")
    {
        scr_hurtplayer(object_index);
    }
    else
    {
        b = 1;
        
        for (i = 0; i < (array_length_1d(transformation) - 1); i += 1)
        {
            if (state == transformation[i])
                b = 0;
        }
        
        if (b == 1)
        {
            if (instance_exists(other.baddieID) && state != 5 && state != 31 && state != 25 && state != 118)
            {
                scr_losepoints();
                state = 5;
                xscale = other.baddieID.image_xscale;
                movespeed = 14;
                vsp = 0;
                sprite_index = spr_tumble;
            }
        }
    }
}
