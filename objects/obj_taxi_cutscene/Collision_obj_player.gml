obj_player.visible = false;
obj_player.sprite_index = obj_player.spr_idle;
obj_player.hsp = 0;
obj_player.vsp = 0;
obj_player.state = 90;
scr_soundeffect(sfx_taxi2);
playerid = 3;
sprite_index = spr_taximove;
hsp = 10;
obj_player.cutscene = 1;
if (pickedup == 0)
    instance_create(x, y, obj_genericpoofeffect);

pickedup = 1;
