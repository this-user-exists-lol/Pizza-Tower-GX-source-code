function scr_enemy_chase()
{
	var targetplayer;
	
	if (object_index == obj_minijohn || object_index == obj_banditochicken)
	{
	    targetplayer = 3;
	    
	    if (obj_player.spotlight == 0)
	        targetplayer = 4;
	    
	    if (x != targetplayer.x && !(image_xscale == -sign(x - targetplayer.x)))
	    {
	        movespeed = 7;
	        image_xscale = -sign(x - targetplayer.x);
	        momentum = -image_xscale * (movespeed + 4);
	    }
	    
	    hsp = (image_xscale * movespeed) + momentum;
	    
	    if (momentum > 0)
	        momentum -= 0.1;
	    
	    if (momentum <= 0)
	        momentum += 0.1;
	    
	    if (scr_solid(x, y + 1))
	        steppy--;
	    
	    if (steppy == 0)
	    {
	        instance_create(x, y + 43, obj_cloudeffect);
	        steppy = 20;
	    }
	}
	
	if (object_index == obj_pickle)
	{
	}
}
