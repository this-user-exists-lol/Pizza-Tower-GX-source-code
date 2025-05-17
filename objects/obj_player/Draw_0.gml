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
draw_set_halign(fa_center)
draw_set_valign(fa_center)
pal_swap_set(spr_palette, paletteselect, 0);
draw_sprite_ext(sprite_index, image_index, x, y, xstretch, ystretch, image_angle, image_blend, image_alpha);
shader_reset();
if (flash)
{
    shader_set(shd_hit);
    draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, image_angle, image_blend, image_alpha);
    shader_reset();
}
else
{
}
if state != 82 && state != 71 && state != 120 && state != 51
{
	xscalestretch = Approach(xscalestretch, 0, 0.2)
	yscalestretch = Approach(yscalestretch, 0, 0.2)
}