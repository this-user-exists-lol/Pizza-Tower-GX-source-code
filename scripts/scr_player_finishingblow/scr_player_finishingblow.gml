function scr_player_finishingblow()
{
	
	if (floor(image_index) == (image_number - 1))
	    state = 0;
	
	if (floor(image_index) > 5 && !instance_exists(obj_swordhitbox))
	{
		hsp = 5 * -xscale
		vsp = -5
	    scr_soundeffect(sfx_punch);
	    scr_soundeffect(sfx_killingblow);
	    
	    with (instance_create(x, y, obj_swordhitbox))
	        playerid = other.object_index;
	}
	else if (floor(image_index) == 0 && !instance_exists(obj_swordhitbox) && sprite_index == spr_swingdingend)
	{
	    scr_soundeffect(sfx_killingblow);
	    
	    with (instance_create(x, y, obj_swordhitbox))
	        playerid = other.object_index;
	}
	
	image_speed = 0.35;
	landAnim = 0;
}
