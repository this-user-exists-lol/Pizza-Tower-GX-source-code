function scr_solid()
{
	var old_x, old_y, slope, object_side, slope_start, slope_end, m;
	
	old_x = x;
	old_y = y;
	x = argument0;
	y = argument1;
	
	if (place_meeting(x, y, obj_solid))
	{
	    x = old_x;
	    y = old_y;
	    return 1;
	}
	
	if (y > old_y && (bbox_bottom % 16) == 0 && !place_meeting(x, old_y, obj_platform) && place_meeting(x, y, obj_platform))
	{
	    x = old_x;
	    y = old_y;
	    return 1;
	}
	
	slope = instance_place(x, y, obj_slope);
	
	if (slope)
	{
	    with (slope)
	    {
	        object_side = 0;
	        slope_start = 0;
	        slope_end = 0;
	        
	        if (image_xscale > 0)
	        {
	            object_side = other.bbox_right;
	            slope_start = bbox_bottom;
	            slope_end = bbox_top;
	        }
	        else
	        {
	            object_side = other.bbox_left;
	            slope_start = bbox_top;
	            slope_end = bbox_bottom;
	        }
	        
	        m = (sign(image_xscale) * (bbox_bottom - bbox_top)) / (bbox_right - bbox_left);
	        slope = slope_start - round(m * (object_side - bbox_left));
	        
	        if (other.bbox_bottom >= slope)
	        {
	            other.x = old_x;
	            other.y = old_y;
	            return 1;
	        }
	    }
	}
	
	x = old_x;
	y = old_y;
	return 0;
}
