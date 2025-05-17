with obj_player1
{
	x = other.x
	y = other.y
	if other.sprite_index != spr_secreteye_close
	{
		scr_soundeffect(sfx_secreteyeenter)
		xscalestretch = 0
		yscalestretch = 0
		secret_buffer = 80
		tauntstoredvsp = vsp
		tauntstoredsprite = sprite_index;
		switch (state)
		{
			case 92:
			{
				tauntstoredstate = 92
				tauntstoredmovespeed = 15
			}
			break
			case 81:
			{
				tauntstoredstate = 0
				tauntstoredmovespeed = 0
			}
			break
			case 80:
			{
				tauntstoredstate = 0
				tauntstoredmovespeed = 0
			}
			break
			case 79:
			{
				tauntstoredstate = 0
				tauntstoredmovespeed = 0
			}
			break
			case 59:
			{
				tauntstoredstate = 0
				tauntstoredmovespeed = 0
			}
			break
			default:
			{
				tauntstoredmovespeed = movespeed;
				tauntstoredstate = state;
			}
			break
			
		}
		substate = "eye_entrance"
		state = 120
		other.image_index = 0
		other.sprite_index = spr_secreteye_close
	}
	if other.secreteyeexit = 0
	{
		secretxsave = x
		secretysave = y
	}
}