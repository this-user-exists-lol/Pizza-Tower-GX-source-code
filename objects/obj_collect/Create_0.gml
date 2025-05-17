if (room == rm_editor)
    exit;

movetowardsplayer = 0
movespeed = 5
value = 10

with (other.id)
{
	if (object_index != obj_escapecollect)
		sprite_index = choose(spr_shroomcollect, spr_tomatocollect, spr_cheesecollect, spr_sausagecollect, spr_pineapplecollect);
    image_speed = 0.35;
    global.collected = 0;
    global.collectsound = sfx_jump;
}
depth = 104;
