function cutscene_customer_start()
{
	var player, customerdoor;
	
	player = argument0;
	
	with (player)
	{
	    hsp = 0;
	    state = 117;
	    customerdoor = instance_nearest(x, y, obj_gnomecustomer);
	    
	    if (customerdoor.x != x)
	        xscale = -sign(x - customerdoor.x);
	}
	
	cutscene_end_action();
}
