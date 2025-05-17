if (room == rm_editor)
    exit;

if (global.collectsound < 10)
    global.collectsound += 1;

if (global.timeattack == 1)
    instance_destroy();
if (!(place_meeting(x, y, obj_secretbigblock) || place_meeting(x, y, obj_secretblock) || place_meeting(x, y, obj_secretmetalblock) || place_meeting(x, y, obj_metalblock)))
{
	if (abs(distance_to_object(obj_player1)) < 25)
		movetowardsplayer = 1
}
if movetowardsplayer = 1
{
    move_towards_point(obj_player.x, obj_player.y, movespeed)
    movespeed++
}