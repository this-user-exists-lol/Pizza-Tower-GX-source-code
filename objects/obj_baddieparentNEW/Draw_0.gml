var xstretch
var ystretch
if xscale == 1
	xstretch = (xscale + xscalestretch)
else if xscale == -1
	xstretch = (xscale - xscalestretch)
if yscale > 0
	ystretch = (yscale + yscalestretch)
else if yscale < 0
	ystretch = (yscale - yscalestretch)
pal_swap_set(spr_null, 1, 0);
draw_sprite_ext(sprite_index,image_index,x,y,xstretch, ystretch,image_angle,image_blend,image_alpha)
shader_reset()
draw_set_halign(fa_center)
	draw_set_font(font0);
	draw_set_color(c_white);
	draw_text(x, y, string_hash_to_newline(hitstate))
if enemystate != enemy_states.thrown
{
	xscalestretch = Approach(xscalestretch, 0, 0.2)
	yscalestretch = Approach(yscalestretch, 0, 0.2)
}