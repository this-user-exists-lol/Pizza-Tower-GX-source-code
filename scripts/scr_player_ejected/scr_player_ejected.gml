function scr_player_ejected()
{
	sprite_index = spr_deathend;
	
	if (vsp < 12)
	    vsp += grav;
	
	x += hsp;
	y += floor(vsp);
	hurted = 0;
	cutscene = 1;
	inv_frames = 0;
	alarm[8] = -1;
	alarm[7] = -1;
	
	if (y > (room_height + 100) && !instance_exists(obj_fadeout))
	{
		landAnim = 0;
		instance_create(x, y, obj_fadeout);
		targetRoom = lastroom;
		state = 0;
		global.seconds = 20;
		obj_camera.ded = 0;
	}
}
