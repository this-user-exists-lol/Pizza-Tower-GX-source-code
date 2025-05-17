if (obj_player.character == "V")
    global.playerhealth = clamp(global.playerhealth + 5, 0, 100);

if (other.object_index == obj_player)
    global.collect += 25;
else
    global.collectN += 25;

with (obj_camera)
    healthshaketime = 40;

with (instance_create(x + 16, y, obj_smallnumber))
    number = string(25);

if (audio_is_playing(sfx_collecttopping))
    audio_stop_sound(sfx_collecttopping);

scr_soundeffect(sfx_collecttopping);
instance_destroy();
