function scr_scareenemy()
{
	var player;
	player = instance_nearest(x, y, obj_player);
	{
	    if ((player.x > (x - 400) && player.x < (x + 400)) && (y <= (player.y + 60) && y >= (player.y - 60)))
	    {
	        if (sprite_index != spr_scared && enemystate != enemy_states.stun && object_index != obj_pizzaboy && (player.state == 92 || player.state == 21))
	        {
			    var i = random_range(0, 100)
			    if (i >= 95)
			        scr_soundeffect(choose(sfx_scream1, sfx_scream2, sfx_scream3, sfx_scream4, sfx_scream5, sfx_scream6, sfx_scream7, sfx_scream8, sfx_scream9, sfx_scream10))
				hsp = 0
				movespeed = 0
	            enemystate = enemy_states.scared;
	            sprite_index = spr_scared;
	            if (x != player.x)
	                image_xscale = -sign(x - player.x);
	            scaredtimer = 100;
	            if (grounded)
	                vsp = -5;
	        }
	    }
	}
}
