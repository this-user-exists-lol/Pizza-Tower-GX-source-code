if (room == rm_editor)
    exit;

if ((obj_player.state = 92 && (obj_player.x > (x - 400) && obj_player.x < (x + 400))) && sprite_index != spr_pillarjohn_scared)
{
    sprite_index = spr_pillarjohn_scared;
}
else
	sprite_index = spr_pillarjohn