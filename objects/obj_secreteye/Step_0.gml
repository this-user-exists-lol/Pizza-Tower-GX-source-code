if (animation_end() && sprite_index == spr_secreteye_close)
{
	with obj_player1
	{
		obj_player1.targetDoor = other.targetDoor
		obj_player1.targetRoom = other.targetRoom
		if other.secreteyeexit = 0
			obj_player1.secreteye = 1
		else
			obj_player1.secreteye2 = 1
	    if (!instance_exists(obj_fadeout))
			instance_create(x, y, obj_fadeout)
		instance_destroy(other.id)
	}
}
if (place_meeting(x, y, obj_secretblock) || place_meeting(x, y, obj_secretmetalblock))
	visible = false
else
	visible = true
