scr_collide();

switch enemystate
{
	case enemy_states.walk:
		scr_NEWenemy_walk()
	break
	case enemy_states.scared:
		scr_NEWenemy_scared()
	break
	case enemy_states.sleep:
		scr_NEWenemy_sleep()
	break
	case enemy_states.stun:
		scr_NEWenemy_stun()
	break
	case enemy_states.attack:
		scr_NEWenemy_attack()
	break
	case enemy_states.thrown:
		scr_NEWenemy_thrown()
	break
	case enemy_states.grabbed:
		scr_NEWenemy_grabbed()
	break
	case enemy_states.throwprojectile:
		scr_pizzagoblin_throw()
	break
	case enemy_states.hitstunned:
		scr_NEWenemy_hitstunned()
	break
}
if cangetscared
	scr_scareenemy()
if (enemystate != enemy_states.scared)
	scaredtimer = 0
if chaseplayer && enemystate = enemy_states.walk
	hsp = (image_xscale * movespeed) + momentum;
else if !chaseplayer || chaseplayer && enemystate != enemy_states.walk
	hsp = image_xscale * movespeed
xscale = image_xscale
if instance_exists(obj_swordhitbox)
{
	if ((obj_player.state = 118) && (distance_to_object(obj_swordhitbox) < 50))
	{
		instance_destroy()
		instance_destroy(obj_swordhitbox)
	}
}
if active = 0
{
	visible = false
	instance_deactivate_object(self)
}
else
{
	visible = true
	instance_activate_object(self)
}
