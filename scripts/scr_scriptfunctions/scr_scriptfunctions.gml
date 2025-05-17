function create_particle(offset, sprite, amount)
{
	repeat(amount)
	{
		with instance_create((x + offset), (y + offset), obj_debris)
			sprite_index = sprite
	}
}

function tv_text(text, text_time)
{
	with obj_hud
	{
	    showtext = 1;
	    message = text;
	    alarm[0] = text_time;
	}
}

function animation_end(ind = sprite_index, img = image_index,  i_end = sprite_get_number(ind), i_spd = image_speed)
{
    return (img + (i_spd) * sprite_get_speed(ind) >= i_end);    
}

function distance_to_player()
{
	if ((obj_player.x > (x - 400) && obj_player.x < (x + 400)) && (y <= (obj_player.y + 20) && y >= (obj_player.y - 20)))
		return true
	else
		return false
}

function scr_smalltext(number, type)
{
	with (instance_create(x + 16, y, obj_smallnumber))
	{
		number = string(number);
		negative = type
	}
}

function Approach(current_value, default_value, addition_of_value)
{
    if (current_value < default_value)
    {
        current_value += addition_of_value
        if (current_value > default_value)
            return default_value;
    }
    else
    {
        current_value -= addition_of_value
        if (current_value < default_value)
            return default_value;
    }
    return current_value;
	
	//note: JUST USE FUCKING LERP DUMBASS
}

function create_collect(argument0, argument1, argument2, argument3)
{
    if (argument3 == undefined)
        argument3 = 0
    argument0 -= camera_get_view_x(view_camera[0])
    argument1 -= camera_get_view_y(view_camera[0])
    var q = 
    {
        x: argument0,
        y: argument1,
        sprite_index: argument2,
        image_index: 0,
        image_number: sprite_get_number(argument2),
		hsp2: random_range(-10, 10),
		vsp2: random_range(-10, 10),
        hsp: 0,
        vsp: 0,
        value: argument3
    }

    ds_list_add(global.collect_list, q)
    return q;
}

function set_hitstun(hitstun_timer)
{
	hitx = x
	hity = y
	hitstun = hitstun_timer
	hitxscale = xscale
	hitspeed = movespeed
	hitvsp = vsp
	if state != 119
		hitstate = state
	invtime = hitstun
	state = 119
	with (other.id)
	{
		if enemystate != enemy_states.grabbed
		{
			hitstun = hitstun_timer
			hitx = x
			hity = y
			hitxscale = xscale
			hitspeed = movespeed
			hitvsp = vsp
			enemystate = enemy_states.hitstunned
		}
		hitstate = enemystate
	}
}
function do_taunt()
{
	scr_soundeffectpitched(sfx_taunt, 1.5);
	taunttimer = 20;
	tauntstoredmovespeed = movespeed;
	tauntstoredvsp = vsp
	tauntstoredsprite = sprite_index;
	tauntstoredstate = state;
	state = 59;
	if (supercharged == 1) && (key_up)
	{
		image_index = 0;
		sprite_index = choose(spr_supertaunt1, spr_supertaunt2, spr_supertaunt3, spr_supertaunt4);
	}
	else
	{
		image_index = random_range(0, 11);
		sprite_index = spr_taunt;
	} 
	instance_create(x, y, obj_taunteffect);
}
function try_solid(argument0, argument1, argument2, argument3)
{
    var old_x = x
    var old_y = y
    var n = -1
    var i = 0
    while (i < argument3)
    {
        x += argument0
        y += argument1
        if (!(scr_solid(x, y)))
        {
            n = i + 1
            break
        }
        else
            i++
    }
    x = old_x
    y = old_y
    return n;
}

function ledge_bump(argument0, argument1)
{
    if (argument1 == undefined)
        argument1 = 4
    var old_x = x
    var old_y = y
    x += (xscale * argument1)
    var ty = try_solid(0, -1, obj_solid, argument0)
    x = old_x
    if (ty != -1)
    {
        y -= ty
        x += xscale
        if scr_solid(x, y)
        {
            x = old_x
            y = old_y
            return true;
        }
        return false;
    }
    return true;
}

function Wave(argument0, argument1, argument2, argument3, argument4)
{
    if (argument4 == undefined)
        argument4 = -4
    var a4 = (argument1 - argument0) * 0.5
    var t = current_time
    if (argument4 != -4)
        t = argument4
    return (argument0 + a4 + (sin((t * 0.001 + argument2 * argument3) / argument2 * (2 * pi))) * a4);
}