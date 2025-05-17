event_inherited()
if (enemystate == enemy_states.walk)
{
	if !forkid
	{
		forkid = 1
		with (instance_create(x, y, obj_forkhitbox))
		ID = other.id
	}
}

