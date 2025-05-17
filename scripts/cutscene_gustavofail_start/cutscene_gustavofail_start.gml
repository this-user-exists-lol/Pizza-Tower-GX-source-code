function cutscene_gustavofail_start()
{
	if (!instance_exists(obj_fadeout) && obj_player.state != 90 && obj_player.state != 69)
	{
	    with (obj_player)
	    {
	        visible = true;
	        image_alpha = 1;
	        state = 117;
	        sprite_index = spr_player_gnomecutscene1;
	        image_speed = 0.35;
	        xscale = 1;
	        hsp = 0;
	        vsp = 0;
	    }
	    
	    with (obj_gustavo)
	    {
	        state = 117;
	        sprite_index = spr_gustavo_idle;
	        image_speed = 0.35;
	        image_xscale = -1;
	    }
	    
	    global.failcutscene = 0;
	    cutscene_end_action();
	}
}
