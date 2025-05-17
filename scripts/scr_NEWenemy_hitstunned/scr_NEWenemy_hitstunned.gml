function scr_NEWenemy_hitstunned()
{
	x = hitx + (random_range(-4, 4))
    y = hity + (random_range(-4, 4))
    hitstun--
	xscale = hitxscale
	sprite_index = spr_stun
	if (hitstun <= 0)
	{
		hitstate = 0
		instance_destroy()
	}
}