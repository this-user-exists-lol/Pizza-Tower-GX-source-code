if (vsp < 12)
    vsp += grav;
	
image_speed = (sprite_index == spr_debris? 0.35 : 0)
x += hsp;
y += floor(vsp);
