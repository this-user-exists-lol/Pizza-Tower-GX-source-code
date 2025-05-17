event_inherited()
if (enemystate = enemy_states.walk) && (bombreset = 0)
{
	sprite_index = spr_throwprojectile
	image_index = 0
	enemystate = enemy_states.throwprojectile
}
if (bombreset > 0)
    bombreset--

