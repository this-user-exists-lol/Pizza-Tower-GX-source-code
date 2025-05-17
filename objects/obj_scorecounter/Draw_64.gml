var scoreposx, scoreposy, fontcolor

scoreposx = (0 + irandom_range(shake, -shake))
scoreposy = (0 + irandom_range(shake, -shake))
fontcolor = (red > 0? c_red : c_white)

draw_set_font(font_add_sprite_ext(spr_pizzascorenumbers, "0123456789", 1, fontthing))
draw_set_halign(fa_center);
draw_set_color(fontcolor);
draw_sprite_ext(spr_pizzascore, 1, scoreposx, scoreposy, 1, 1, 0, c_white, image_alpha)

var _score = global.collect
var cs = 0
with (obj_collectparticle)
{
	for (var i = 0; i < ds_list_size(global.collect_list); i++)
		cs += ds_list_find_value(global.collect_list, i).value
}
var sc = string (_score - cs)
draw_text((scoreposx + 155), (scoreposy + 60), string_hash_to_newline(sc))

if fontthing > 0
	fontthing--
else if fontthing < 0
	fontthing++
if red > 0
	red--
if shake > 0
	shake--
