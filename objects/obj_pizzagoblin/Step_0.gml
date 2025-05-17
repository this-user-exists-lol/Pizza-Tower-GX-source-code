event_inherited()
if distance_to_player()
{
	if (enemystate = enemy_states.walk) && (bombreset = 0)
	{
		sprite_index = spr_throwprojectile
		image_index = 0
		image_xscale = -sign(x - obj_player.x);
		enemystate = enemy_states.throwprojectile
	}
}
if (bombreset > 0)
    bombreset--

