function scr_player_hook()
{
	if (key_jump)
	{
	    state = 66;
	    sprite_index = spr_jump;
	    image_index = 0;
	    vsp = -11;
	    jumpstop = 0;
	}
}
