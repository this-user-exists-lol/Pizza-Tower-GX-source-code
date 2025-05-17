if (obj_player.character == "V")
    global.playerhealth = clamp(global.playerhealth + 10, 0, 100);

with (obj_camera)
    healthshaketime = 60;

scr_soundeffect(sfx_collectpizza);
scr_voice("positive")
instance_destroy();
obj_hud.bigcollecttimer = 200
global.combotimepause = 35
global.combotime = 6700
global.collect += value
create_collect(x, y, sprite_index, value)

with (instance_create(x + 16, y, obj_smallnumber))
    number = string(other.value);
