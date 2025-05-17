function cutscene_gustavo_start()
{
	if (!instance_exists(obj_fadeout) && obj_player.state != 90 && obj_player.state != 69 && obj_player.state != 81)
	{
	    with (obj_player)
	    {
	        visible = true;
	        image_alpha = 1;
	        state = 117;
	        sprite_index = spr_idle;
	        image_speed = 0.35;
	        xscale = 1;
	        hsp = 0;
	        vsp = 0;
	    }
	    
	    with (obj_gustavo)
	    {
	        state = 117;
	        
	        if (!global.failcutscene)
	            sprite_index = spr_gustavo_makepizza;
	        else
	            sprite_index = spr_gustavo_idle;
	        
	        image_speed = 0.35;
	        image_xscale = -1;
	    }
	    
	    cutscene_end_action();
	}
}
