if (active)
{
	if (room == rm_editor)
	    exit;

	if (audio_is_playing(sfx_collecttopping))
	    audio_stop_sound(sfx_collecttopping);

	scr_soundeffectpitched(sfx_collectescape, 2)

	if (obj_player.character == "V")
	    global.playerhealth = clamp(global.playerhealth + 1, 0, 100);

	with (obj_camera)
	    healthshaketime = 30;
    global.combotime += 10
    global.combotime = clamp(global.combotime, 0, 60)
	global.collect += value
	create_collect(x, y, sprite_index, value)
	with (instance_create(x + 16, y, obj_smallnumber))
	    number = string(other.value);

	instance_destroy();
}
