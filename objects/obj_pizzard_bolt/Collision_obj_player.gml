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
            if (state != 31 && state != 118 && hurted == 0)
            {
                scr_losepoints();
                scr_soundeffect(sfx_becomeknight);
                hsp = 0;
                movespeed = 0;
                state = 31;
                image_index = 0;
                sprite_index = spr_knightpepthunder;
                instance_destroy(other.id);
            }
        }
    }
}
