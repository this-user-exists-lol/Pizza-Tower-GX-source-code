function scr_NEWenemy_grabbed()
{
	image_xscale = -obj_player.xscale;
	sprite_index = spr_stun
	stuntimer = 200
	if (obj_player.state == 54)
	{
		if (obj_player.sprite_index == obj_player.spr_haulingstart)
			y = obj_player.y - (obj_player.image_index * 20)
		else
			y = obj_player.y - 40;
		x = obj_player.x;
	}
	else if (obj_player.state == 51 || hitstate == enemy_states.grabbed && obj_player.sprite_index == obj_player.spr_piledriver || obj_player.sprite_index == obj_player.spr_piledriverland)
	{
		yscale = -1
		x = obj_player.x;
		y = obj_player.y;
		if obj_player.image_index < 5
			depth = 0
		else
			depth = -8
		if (obj_player.sprite_index == obj_player.spr_piledriverland && floor(obj_player.image_index) == (obj_player.image_number - 1))
		{
	        with (obj_player)
	        {
	            state = 66;
	            vsp = -12;
	            sprite_index = spr_player_piledrivejump
	        }
			create_particle(16, spr_slapstar, 3)
			create_particle(16, spr_baddiegibs, 3)
		    instance_create(x, y, obj_bangeffect);
			obj_player1.baddiegrabbedID = 0
			instance_destroy()
		}
	}
	else if (obj_player.state == 6) || (obj_player.state = 16)
	{
	     x = obj_player.x + (obj_player.xscale * (obj_player.state == 6? 60 : 15));
	     y = obj_player.y;
		 if obj_player.state == 6
		 {
			if place_meeting(x, y, obj_swordhitbox)
			{
				if (obj_player1.sprite_index == obj_player1.spr_uppercutfinishingblow)
				{
					hsp = 0
					vsp = -25
				}
				else
				{
					movespeed = -obj_player.image_xscale * 25;
					vsp = 0
				}
				global.combotime = 60
				create_particle(16, spr_slapstar, 3)
				create_particle(16, spr_baddiegibs, 3)
				instance_create(x, y, obj_parryeffect)
			    instance_create(x, y, obj_bangeffect);
				obj_player1.baddiegrabbedID = 0
				enemystate = enemy_states.thrown
			}
		 }
	}
	else if (obj_player.sprite_index == obj_player.spr_swingding)
	{
		if (floor(obj_player.image_index) == 0)
		{
			depth = -8;
			x = obj_player.x + (obj_player.xscale * 25);
			y = obj_player.y;
		}
		if (floor(obj_player.image_index) == 1)
		{
			depth = -8;
			x = obj_player.x;
			y = obj_player.y;
		}
		if (floor(obj_player.image_index) == 2)
		{
			depth = -8;
			x = obj_player.x + (obj_player.xscale * -25);
			y = obj_player.y;
		}
		if (floor(obj_player.image_index) == 3)
		{
			depth = 0;
			x = obj_player.x + (obj_player.xscale * -50);
			y = obj_player.y;
		}
		if (floor(obj_player.image_index) == 4)
		{
			depth = 0;
			x = obj_player.x + (obj_player.xscale * -25);
			y = obj_player.y;
		}
		if (floor(obj_player.image_index) == 5)
		{
			depth = 0;
			x = obj_player.x;
			y = obj_player.y;
		}
		if (floor(obj_player.image_index) == 6)
		{
			depth = 0;
			x = obj_player.x + (obj_player.xscale * 25);
			y = obj_player.y;
		}
		if (floor(obj_player.image_index) == 7)
		{
			depth = 0;
			x = obj_player.x + (obj_player.xscale * 50);
			y = obj_player.y;
		}
	}
	else
	{
		stuntimer = 500
		obj_player1.baddiegrabbedID = 0
		enemystate = enemy_states.stun
	}

}