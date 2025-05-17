function scr_pizzagoblin_throw()
{
	if (!variable_global_exists("throw_frame"))
	{
	    global.throw_frame = 0;
	    global.throw_frame[obj_pizzagoblin] = 2;
		global.throw_frame[obj_swedishmonkey] = 15;
	    global.throw_sprite = spr_plug;
	    global.throw_sprite[obj_pizzagoblin] = spr_pizzagoblin_throwbomb;
		global.throw_sprite[obj_swedishmonkey] = spr_swedishmonkey_eat;
	    global.reset_timer = 0;
	    global.reset_timer[obj_pizzagoblin] = 200;
		global.reset_timer[obj_swedishmonkey] = 200
	}
	
	movespeed = 0
	hsp = 0;
	
	if (place_meeting(x, y + 1, obj_railh))
	    hsp = -5;
	else if (place_meeting(x, y + 1, obj_railh2))
	    hsp = 5;
	
	if (floor(image_index) == (image_number - 1))
	{
	    enemystate = enemy_states.walk;
	    sprite_index = spr_walk;
	}
	
	if (bombreset == 0 && floor(image_index) == global.throw_frame[object_index])
	{
	    bombreset = global.reset_timer[object_index];
	    sprite_index = global.throw_sprite[object_index];
	    
	    if (point_in_rectangle(x, y, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]), camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])))
	        scr_soundeffect(sfx_enemyprojectile);
	    
	    switch (object_index)
	    {
	        case obj_pizzagoblin:
	            with (instance_create(x, y, obj_pizzagoblinbomb))
	            {
	                hsp = other.image_xscale * 10;
	                vsp = -8;
	            }
	            
	            break;
	        case obj_swedishmonkey:
	            with (instance_create(x, y, obj_banana))
	            {
	                baddieID = other.id;
	                image_xscale = other.image_xscale;
	                hsp = -other.image_xscale * 4;
	                vsp = -5;
                
	                with (obj_banana)
	                {
	                    if (baddieID == other.baddieID)
	                        banana += 1;
	                }
	            }
            
	            break;
	    }
	}
	
	if (!grounded && hsp < 0)
	    hsp += 0.1;
	else if (!grounded && hsp > 0)
	    hsp -= 0.1;
}
