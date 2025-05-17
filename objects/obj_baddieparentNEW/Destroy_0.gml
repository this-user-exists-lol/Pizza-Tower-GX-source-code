
if (room == rm_editor)
    exit;

if ((ds_list_find_index(global.baddieroom, id) == -1) && (!escapespawn)) || ((ds_list_find_index(global.baddieroom, id) == -1) && (escapespawn) && (fromescapespawner))
{
    scr_soundeffect(sfx_killenemy);
    scr_sleep(50);
	create_particle(16, spr_slapstar, 3)
	create_particle(16, spr_baddiegibs, 3)
	instance_create(x, y, obj_bangeffect);
    with (obj_camera)
    {
        shake_mag = 3;
        shake_mag_acc = 3 / room_speed;
    }
	with (obj_hud)
	{
		showcombo = 210
		cshake = 10
	}
    
    with (instance_create(x, y, obj_sausageman_dead))
	{
        sprite_index = other.spr_dead;
		speen = (other.enemystate = enemy_states.thrown? 1 : 0)
	}
    
    global.style += 5;
    ds_list_add(global.baddieroom, id);
    obj_hud.image_index = random_range(0, 4);
    global.combo += 1;
    global.combotime = 6700;
}
