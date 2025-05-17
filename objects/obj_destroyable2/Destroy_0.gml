if (room == rm_editor)
    exit;

if (ds_list_find_index(global.saveroom, id) == -1 && global.snickchallenge == 0)
{
	create_particle(16, spr_pizzadebris, 6)
	var sprchoose = choose(spr_shroomcollect, spr_cheesecollect, spr_tomatocollect, spr_sausagecollect, spr_pineapplecollect)
	create_collect(x, y , sprchoose, 10)
	global.combotime += 10
	global.combotime = clamp(global.combotime, 0, 60)
	global.collect += 10
	scr_soundeffectpitched(sfx_collecttopping, 1.5)
	with instance_create(x, y, obj_parryeffect)
		sprite_index = spr_destroyable2_destroy
	with (instance_create(x + 16, y, obj_smallnumber))
	    number = string(10);
    tile_layer_delete_at(1, x, y);
    
    if (audio_is_playing(sfx_breakblock1) || audio_is_playing(sfx_breakblock2))
    {
        audio_stop_sound(sfx_breakblock1);
        audio_stop_sound(sfx_breakblock2);
    }
    
    scr_soundeffect(sfx_breakblock1, sfx_breakblock2);
    ds_list_add(global.saveroom, id);
}
