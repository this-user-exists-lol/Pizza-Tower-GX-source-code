if (sprite_index == spr_pizzaboxunopen)
{
	if (content == obj_pizzakinshroom) || (content == obj_pizzakincheese) || (content == obj_pizzakintomato) || (content == obj_pizzakinsausage) || (content == obj_pizzakinpineapple)
    {
		ds_list_add(global.saveroom, id)
		scr_soundeffect(sfx_collecttoppin)
		scr_smalltext("1000")
		with instance_create(x, y, obj_parryeffect)
			sprite_index = spr_taunteffect
		with (instance_create(x, y, obj_parryeffect))
			sprite_index = spr_pizzaboxopen
        with (instance_create(x, (y - 25), content))
			sprite_index = toppinintrospr
        if (global.toppintotal < 5)
			tv_text((("You need " + string((5 - global.toppintotal))) + " more Toppins!"), 150)
        if (global.toppintotal == 5)
            tv_text("You got all of the Toppins!", 150)
		global.toppintotal += 1
		global.combotimepause = 35
		global.combotime = 6700
		global.collect += 1000
		obj_hud.bigcollecttimer = 200
		repeat (20)
		{
			var sprchoose = choose(spr_shroomcollect, spr_cheesecollect, spr_tomatocollect, spr_sausagecollect, spr_pineapplecollect)
			var randomx = random_range(-50, 50)
			create_collect(x + randomx, y + randomx, sprchoose)
		}
		switch content
		{
			case obj_pizzakinshroom:
				global.shroomfollow = 1
			break
			case obj_pizzakincheese:
				global.cheesefollow = 1
			break
			case obj_pizzakintomato:
				global.tomatofollow = 1
			break
			case obj_pizzakinsausage:
				global.sausagefollow = 1
			break
			case obj_pizzakinpineapple:
				global.pineapplefollow = 1
			break
		}
    }
	else
		(instance_create(x, (y - 25), content))
	instance_destroy()
}

