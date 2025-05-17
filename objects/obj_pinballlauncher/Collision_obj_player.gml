var b;

with (other.id)
{
    b = 1;
    
    for (i = 0; i < (array_length_1d(transformation) - 1); i += 1)
    {
        if (state == transformation[i])
            b = 0;
    }
    
    if (b == 1)
    {
        if (grounded && state != 5 && state != 31 && state != 25)
        {
            state = 5;
            xscale = sign(other.image_xscale);
            movespeed = 14;
            vsp = 0;
            sprite_index = spr_tumble;
            other.image_index = 0;
            other.sprite_index = spr_goblinbot_kick;
        }
    }
}
