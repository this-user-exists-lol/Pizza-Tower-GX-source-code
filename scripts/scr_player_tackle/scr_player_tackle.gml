function scr_player_tackle()
{
	combo = 0;
	mach2 = 0;
	hsp = xscale * movespeed;
	start_running = 1;
	jumpAnim = 1;
	dashAnim = 1;
	landAnim = 0;
	moveAnim = 1;
	stopAnim = 1;
	crouchslideAnim = 1;
	crouchAnim = 1;
    movespeed = Approach(movespeed, 0, 0.5)
    if (movespeed <= 5 && grounded && vsp > 0)
	{
		if key_attack2
		{
			movespeed = 7
			state = 78
		}
		else
			state = 0
	}
	if (floor(image_index) == (image_number - 1))
		image_speed = 0
	else
		image_speed = 0.35;
}
