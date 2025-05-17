if (room == rm_editor)
    exit;

if (ds_list_find_index(global.saveroom, id) == -1 && global.snickchallenge == 0)
{
	create_particle(32, spr_pizzadebris, 7)
	repeat (10)
	{
		var sprchoose = choose(spr_shroomcollect, spr_cheesecollect, spr_tomatocollect, spr_sausagecollect, spr_pineapplecollect)
		var randomx = random_range(-30, 30)
		create_collect(x + randomx, y + randomx, sprchoose, 100)
	}
	global.combotime = 6700
	global.collect += 100
	scr_soundeffectpitched(sfx_collecttopping, 1.5)
	with instance_create(x, y, obj_parryeffect)
		sprite_index = spr_destroyable2_bigdestroy
	with (instance_create(x + 16, y, obj_smallnumber))
	    number = string(100);
    tile_layer_delete_at(1, x, y);
    tile_layer_delete_at(1, x + 32, y);
    tile_layer_delete_at(1, x + 32, y + 32);
    tile_layer_delete_at(1, x, y + 32);
    
    if (audio_is_playing(sfx_breakblock1) || audio_is_playing(sfx_breakblock2))
    {
        audio_stop_sound(sfx_breakblock1);
        audio_stop_sound(sfx_breakblock2);
    }
    
    scr_soundeffect(sfx_breakblock1, sfx_breakblock2);
    ds_list_add(global.saveroom, id);
}
