hsp = image_xscale * 5;

if (place_meeting(x + hsp, y, obj_solid))
{
    instance_create(x, y, obj_bombexplosion);
    instance_destroy();
}

if (place_meeting(x + 1, y, obj_bombblock) || place_meeting(x - 1, y, obj_bombblock) || place_meeting(x, y - 1, obj_bombblock) || place_meeting(x, y + 1, obj_bombblock))
    instance_create(x, y, obj_bombexplosion);

scr_collide();
