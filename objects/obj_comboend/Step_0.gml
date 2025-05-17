var sprchoose

x = obj_player.x;
y = (sprite_get_bbox_top(obj_player.sprite_index) + obj_player.y) - 100;

if (timer > 0)
	timer--
else
{
	if scorecombo > 0
	{
		scorecombo -= 1
		global.collect += 1
		sprchoose = choose(spr_shroomcollect, spr_cheesecollect, spr_tomatocollect, spr_sausagecollect, spr_pineapplecollect)
		create_collect(x, y , sprchoose, 1)
	}
	else
	{
		timer2--
		if timer2 < 0
			instance_destroy()
	}
}
var title = floor(global.savecombo / 10)
if global.savecombo >= 90
	image_index = 9
else
	image_index = title