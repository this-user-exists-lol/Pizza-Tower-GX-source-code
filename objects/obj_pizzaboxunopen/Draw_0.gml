var toppincolor

if (content == obj_pizzakinshroom)
	toppincolor = 1
else if (content == obj_pizzakincheese)
	toppincolor = 2
else if (content == obj_pizzakintomato)
	toppincolor = 3
else if (content == obj_pizzakinsausage)
	toppincolor = 4
else if (content == obj_pizzakinpineapple)
	toppincolor = 5
else
	toppincolor = 0

pal_swap_set(spr_pizzaboxpalette, toppincolor, 0);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale, image_yscale,image_angle,image_blend,image_alpha)
shader_reset()


