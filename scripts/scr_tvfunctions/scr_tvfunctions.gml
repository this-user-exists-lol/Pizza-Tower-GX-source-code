function tv_setsprite()
{
	if instance_exists(obj_player1)
	{
		with obj_hud
		{
			if bigcollecttimer > 0
			{
				tvstate = "bigcollect"
				tvsprite = spr_hudP_bigcollect
			}
			else if (obj_player1.state = 92 || obj_player1.state = 79 || obj_player1.state = 24)
			{
				tvstate = "mach"
				switch obj_player1.state
				{
					case 92:
						tvsprite = (obj_player1.sprite_index == obj_player1.spr_crazyrun? spr_hudP_mach4 : spr_hudP_mach3)
					break
					case  24:
					case 79:
					{
						if obj_player1.sprite_index == obj_player1.spr_mach3boost
							tvsprite = spr_hudP_mach3
					}
					break
				}
			}
			else
			{
				tvstate = "idle"
				if instance_exists(obj_secretfound)
					tvsprite = spr_hudP_secret
				else if global.panic
					tvsprite = spr_hudP_panic
				else if global.combo >= 3
					tvsprite = spr_hudP_combo
				else
				{
					if animation_buffer > 0
						animation_buffer--
					if animation_buffer == 0
					{
						tvsprite = idleanimchoose
						if (animation_end() && sprite_index = idleanimchoose)
							animation_buffer = 300
					}
					else
						tvsprite = (spr_hudP_idle)
				}
			}
			if tvstate != prevtvstate
				staticeffect = 20
		}
	}
}
