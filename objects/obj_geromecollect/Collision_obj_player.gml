if (!global.gotgerome) && (global.panic)
{
	donecount = 0
	addtime = 100
	timeminus = 1
	global.combotime = 60
	global.combotimepause = 120
	global.gotgerome = 1
	ds_list_clear(global.escapecollectiblelist)
	ds_list_clear(global.escapespawnerlist)
	tv_text("Get back to Gerome's door!!!", 150)
	scr_soundeffect(sfx_geromeget)
	audio_group_stop_all(music)
	with instance_create(x, y, obj_gerome)
		sprite_index = toppinintrospr
	with instance_create(x, y, obj_parryeffect)
		sprite_index = spr_taunteffect
}



