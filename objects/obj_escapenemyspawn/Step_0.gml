if global.panic = 1
{
	if distance_to_object(obj_player1) < 700
	{
		if (visible = false)
			scr_soundeffect(sfx_escapespawn)
		visible = true
		if (floor(image_index) == 8) && donecreateobject = 0
		{
			instance_create(x, y, obj_genericpoofeffect)
			with instance_create(x, y, content)
			{
				hsp = 0
				movespeed = 0
				enemystate = enemy_states.stun
				fromescapespawner = 1
				stuntimer = 50
			}
			donecreateobject = 1
		}
	}
	else
	{
		image_index = 0
		visible = false
	}
	if animation_end()
	{
		ds_list_add(global.escapespawnerlist, id);
		instance_destroy()
	}
}
else
	visible = false