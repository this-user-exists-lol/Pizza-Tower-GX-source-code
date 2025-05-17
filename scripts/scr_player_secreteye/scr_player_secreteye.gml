function scr_player_secreteye()
{
	hsp = 0
	vsp = 0
	sprite_index = spr_hurt
	
	if secret_buffer > 0
		secret_buffer--
	if secret_buffer == 0
	{
	    movespeed = tauntstoredmovespeed;
		vsp = tauntstoredvsp
	    sprite_index = tauntstoredsprite;
	    state = tauntstoredstate;
	}
	if substate = "eye_entrance"
	{
		xscalestretch = Approach(xscalestretch, -1, 0.05)
		yscalestretch = Approach(yscalestretch, -1, 0.05)
	}
	if substate = "eye_exit"
	{
		xscalestretch = Approach(xscalestretch, 0, 0.05)
		yscalestretch = Approach(yscalestretch, 0, 0.05)	
	}
}