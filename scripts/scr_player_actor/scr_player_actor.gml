function scr_player_actor()
{
	if (sprite_index == spr_player_givepizza || sprite_index == spr_player_gnomecutscene2)
	{
	    if (image_index > (image_number - 1))
	        image_index = image_number - 1;
	}
	
	cutscene = 1;
	movespeed = 0;
}
