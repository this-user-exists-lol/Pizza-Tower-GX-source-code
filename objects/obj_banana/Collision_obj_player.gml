var b;

if (drop == 0)
{
    with (other.id)
    {
        b = 1;
        
        for (i = 0; i < (array_length_1d(transformation) - 1); i += 1)
        {
            if (state == transformation[i] && state != 87)
                b = 0;
        }
        
        if (b == 1)
        {
            if (state == 87)
            {
                movespeed = 4;
                sprite_index = spr_player_barrelslipnslide;
                image_index = 0;
                other.drop = 1;
                other.vsp = -5;
            }
            else if (other.drop == 0)
            {
                scr_losepoints();
                sprite_index = spr_player_slip;
				image_index = 0
				scr_soundeffect(sfx_startslip)
				instance_destroy(other.id)
		        movespeed += 2
		        if (movespeed > 14)
		            movespeed = 14
		        hsp = movespeed * xscale
				vsp = -11
                state = 68;
                
            }
        }
    }
}
