function cutscene_taxi_start()
{
	var player;
	
	player = argument0;
	
	with (player)
	{
	    global.failcutscene = 1;
	    global.showgnomelist = 0;
	    state = 117;
	    cutscene = 1;
	    image_speed = 0.5;
	    sprite_index = spr_player_outofpizza1;
	    image_index = 0;
	    vsp = -14;
	    image_speed = 0.35;
	}
	
	cutscene_end_action();
}
