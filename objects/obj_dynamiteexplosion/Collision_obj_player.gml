with (other.id)
{
    if (other.hurtplayer == 0)
    {
        if (key_jump2)
        {
            vsp = -20;
            
            if (state == 0 || state == 66 || hsp == 0)
            {
                sprite_index = spr_playerV_superjump;
                state = 66;
            }
            
            image_index = 0;
            jumpAnim = 1;
            jumpstop = 1;
            other.hurtplayer = 1;
        }
    }
}
