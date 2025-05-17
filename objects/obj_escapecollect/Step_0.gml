if (room == rm_editor)
    exit;

if (global.collectsound < 10)
    global.collectsound += 1;
if global.panic
{
	image_alpha = 1
	active = 1
}
else
{
	image_alpha = 0.5
	active = 0
}

if (global.timeattack == 1)
    instance_destroy();
if (active = 1)
{
	if (abs(distance_to_object(obj_player1)) < 25)
		movetowardsplayer = 1

	if movetowardsplayer = 1
	{
	    move_towards_point(obj_player.x, obj_player.y, movespeed)
	    movespeed++
	}
}

value = 5 * (floor(global.combo / 10)) + 10