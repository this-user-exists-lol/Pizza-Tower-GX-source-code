if (animation_end() && sprite_index == spr_secreteye_entranceopen)
	sprite_index = spr_secreteye_entranceidle
if (animation_end() && sprite_index == spr_secreteye_entranceclose)
	instance_destroy()
	
if (sprite_index == spr_secreteye_entranceidle)
{
	if idle > 0
		idle--
	if idle == 0
	{
		image_index = 0
		sprite_index = spr_secreteye_entranceclose
	}
}

if ((place_meeting(x, y, obj_player1)) && (sprite_index == spr_secreteye_entranceopen))
{
	with obj_player1
	{
		substate = "eye_exit"
		state = 120
		secret_buffer = 2
		x = other.x
		y = other.y
	}
}
else
	secret_buffer = 0


