function scr_player_dynamite()
{
	if (grounded)
	{
	    hsp = xscale * movespeed;
	    
	    if (movespeed > 0)
	        movespeed -= 0.1;
	}
	
	if (grounded)
	    hsp = 0;
	
	landAnim = 0;
	
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_playerV_dynamitethrow)
	{
	    if (key_attack && hsp != 0)
	        state = 78;
	    else
	        state = 0;
	}
	
	image_speed = 0.4;
}
