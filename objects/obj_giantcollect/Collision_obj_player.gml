if (obj_player.character == "V")
    global.playerhealth = clamp(global.playerhealth + 100, 0, 100);

with (obj_camera)
    healthshaketime = 120;

scr_soundeffect(sfx_collectgiantpizza);
global.combotime = 6700
global.collect += 1000
repeat (20)
{
	var sprchoose = choose(spr_shroomcollect, spr_cheesecollect, spr_tomatocollect, spr_sausagecollect, spr_pineapplecollect)
	var randomx = random_range(-50, 50)
	create_collect(x + randomx, y + randomx, sprchoose, 1000)
}
with (instance_create(x + 16, y, obj_smallnumber))
    number = string(1000);

instance_destroy();
