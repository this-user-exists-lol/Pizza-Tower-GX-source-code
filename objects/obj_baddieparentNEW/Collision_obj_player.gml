if enemystate != enemy_states.grabbed
{
with obj_player
{
	if (state == 78 || state == 45 && vsp > 0)
	{
		with other
		{
			if (x != obj_player1.x)
			{
				image_xscale = -sign(x - obj_player1.x);
				create_particle(16, spr_slapstar, 1)
			}
			global.combotime = 60
			xscalestretch = 0.5
			vsp = -5
			movespeed = 10
			stuntimer = 100
			enemystate = enemy_states.stun
		}
	}
	if (instakillmove) && other.enemystate != enemy_states.grabbed
	{
		scr_soundeffect(sfx_punch);
		instance_create(x, y, obj_parryeffect)
		if (state == 92)
		{
			sprite_index = spr_mach3hit
			image_index = 0
		}
		flash = 1
		if hitstate != 199
			set_hitstun(3)
	}
	else if ((vsp > 0) && (y < other.y) && (!grounded) && (state = 66))
	{
		scr_soundeffect(sfx_stompenemy);
		with other
		{
			image_xscale = obj_player1.xscale
			xscalestretch = 0.5
			vsp = -5
			movespeed = 5
			stuntimer = 100
			enemystate = enemy_states.stun
		}
        instance_create(x, y + 50, obj_stompeffect);
        stompAnim = 1;
        vsp = (key_jump2? -14 : -6)
        if (state == 66)
			sprite_index = spr_stompprep;
	}
	if suplexmove && baddiegrabbedID == 0
	{
		image_index = 0
		sprite_index = spr_haulingstart
		if (movespeed > 5 && key_attack)
			state = 16
		else
		{
			movespeed = 0
			state = 54
		}
		baddiegrabbedID = other.id
		other.enemystate = enemy_states.grabbed
	}
}
}



