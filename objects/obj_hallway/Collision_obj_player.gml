with (other.id)
{
    x = other.x;
    y = other.y + (other.sprite_height - 46);
    if (!instance_exists(obj_fadeout))
    {
	    obj_player.targetDoor = other.targetDoor;
	    obj_player.targetRoom = other.targetRoom;
	    obj_player.hallway = 1;
	    obj_player.hallwaydirection = other.image_xscale;
		obj_player1.xscalestretch = 0
		obj_player1.yscalestretch = 0
		global.combotimepause = 10
	    other.visited = 1;
	    if (state == 79)
	       state = 0;
	    scr_soundeffect(sfx_door);
	    instance_create(x, y, obj_fadeout);
    }
}
