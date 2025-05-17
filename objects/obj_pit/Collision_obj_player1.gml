with obj_player1
{
	pit = 1
	alarm[8] = 100;
	alarm[7] = 50;
	state = 81;
	movespeed = 0;
	vsp = -5;
	sprite_index = spr_hurt
	if other.value = 0
	{
		x = other.pitx
		y = other.pity
	}
	else
	{
		x = roomstartx
		y = roomstarty
	}
}



