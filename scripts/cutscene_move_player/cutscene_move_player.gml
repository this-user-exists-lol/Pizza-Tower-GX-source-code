function cutscene_move_player()
{
	var player, x_to, max_hsp, threshold, finish;
	
	player = argument0;
	x_to = argument1;
	max_hsp = argument2;
	threshold = argument3;
	finish = 0;
	
	with (player)
	{
	    sprite_index = spr_move;
	    image_speed = 0.6;
	    
	    if (x < (x_to - threshold))
	    {
	        xscale = 1;
	        
	        if (hsp < max_hsp)
	            hsp += 0.5;
	        else
	            hsp = max_hsp;
	    }
	    else if (x > (x_to + threshold))
	    {
	        xscale = -1;
	        
	        if (hsp > -max_hsp)
	            hsp -= 0.5;
	        else
	            hsp = -max_hsp;
	    }
	    else
	    {
	        hsp = 0;
	        finish = 1;
	    }
	}
	
	if (finish)
	    cutscene_end_action();
	
	with (player)
	{
	    if (move != 0 && (floor(image_index) == 3 || floor(image_index) == 8) && steppy == 0 && character != "V")
	    {
	        instance_create(x, y + 43, obj_cloudeffect);
	        steppy = 1;
	    }
	    
	    if (move != 0 && floor(image_index) != 3 && floor(image_index) != 8)
	        steppy = 0;
	}
}
