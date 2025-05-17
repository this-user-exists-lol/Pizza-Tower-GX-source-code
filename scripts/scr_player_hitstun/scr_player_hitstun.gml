function scr_player_hitstun()
{
    hsp = 0
    vsp = 0
    x = hitx + (random_range(-4, 4))
    y = hity + (random_range(-4, 4))
    hitstun--
    xscale = hitxscale
	//if hitstate = 119
	//	hitstate = 92
    image_speed = 0
	if hitstun < 0
	{
		image_speed = 0.35
		x = hitx
		y = hity
        if (!(place_meeting(x, (y - 1), obj_solid)))
        {
            y--
            grounded = false
        }
        if scr_solid(x, y)
            y -= 5
		state = hitstate
		xscale = hitxscale
		movespeed = abs(hitspeed)
		vsp = hitvsp
	}

}