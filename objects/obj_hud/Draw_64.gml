// tv sprite
pal_swap_set(obj_player1.spr_palette, obj_player1.paletteselect, 0)
draw_sprite_ext(spr_hud_bg, -1, 832, 74, 1, 1, 0, c_white, alpha)
if staticeffect == 0
	draw_sprite_ext(tvsprite, -1, 832, 74, 1, 1, 0, c_white, alpha);
else
{
	draw_sprite_ext(spr_hud_static, -1, 832, 74, 1, 1, 0, c_white, alpha);
	prevtvstate = tvstate
	if staticeffect > 0
		staticeffect--
	if tvstate == "idle"
		animation_buffer = 300
}
pal_swap_reset()
shader_reset()
if tvstate != "idle"
{
	animation_buffer = 0
	animation_buffer = 0
}
else if tvstate == "idle"
{
	if animation_buffer != 0
		idleanimchoose = choose(spr_hudP_idleanim1, spr_hudP_idleanim2)
}

// combo text
var combocap = 60
var tvxpos = (832 + random_range(-cshake, cshake))
var tvypos = (74 + random_range(-cshake, cshake))
var combobar = (sprite_get_width(spr_hud_combobar) * global.combotime / combocap)
var gotcombo = (global.combo > 0? 1 : 0)

draw_sprite_ext(spr_hud_combobackground, -1, 832, 74, 1, 1, 0, c_white, comboalpha)
if showcombo > 0
{
	if comboalpha < 1
		comboalpha += 0.3
	draw_sprite_ext(spr_hud_combotext, -1, 832, 74, 1, 1, 0, c_white, 1)
	draw_set_font(font_add_sprite_ext(spr_combo_font, "0123456789", 1, 0));
	draw_text((tvxpos - 12), (tvypos + 10), string_hash_to_newline(global.combo))
	showcombo--
}
else
{
	if comboalpha > 0
		comboalpha -= 0.3
	showcombo = 0
}
if global.combo > 0
{
	draw_sprite_ext(spr_hud_combobar, 0, 825, 130, 1, 1, 0, c_white, gotcombo)
	draw_sprite_part_ext(spr_hud_combobar, 1, 0, 0, combobar, sprite_get_height(spr_hud_combobar), 797, 126, 1, 1, c_white, gotcombo)
}
if cshake > 0
	cshake--
if global.combotime > combocap
	global.combotime = combocap
if global.combotimepause > 0
	global.combotimepause--
if (global.combotime > 0 && global.combotimepause == 0)
	global.combotime -= 0.15
if global.combotime <= 0
{
	if global.combo > 0
	{
		global.savecombo = global.combo
		with instance_create(x, y, obj_comboend)
			scorecombo += ((global.combo * 10) + (floor(global.combo * 0.5)))
		scr_soundeffect(sfx_comboend)
	}
	global.combo = 0
}
if global.combo = 0
	showcombo = 0

//score hud
var scoreposx, scoreposy, fontcolor

scoreposx = (0 + irandom_range(shake, -shake))
scoreposy = (0 + irandom_range(shake, -shake))
fontcolor = (red > 0? c_red : c_white)
panicjiggle = 0
if global.panic == 1
{
	panicjiggle += 1
	if panicjiggle > 12
		panicjiggle = 0
}
else
	panicjiggle = 0

draw_set_font(font_add_sprite_ext(spr_pizzascorenumbers, "0123456789", 1, fontthing))
draw_set_halign(fa_center);
draw_set_color(fontcolor);
draw_sprite_ext(spr_pizzascore, panicjiggle, scoreposx, scoreposy, 1, 1, 0, c_white, alpha);

var _score = global.collect
var cs = 0

if (_score >= global.srank)
	draw_sprite_ext(spr_pizzascore_shroom, panicjiggle, scoreposx, scoreposy, 1, 1, 0, c_white, alpha);
if (_score >= global.arank)
	draw_sprite_ext(spr_pizzascore_olive, panicjiggle, scoreposx, scoreposy, 1, 1, 0, c_white, alpha);
if (_score >= global.brank)
	draw_sprite_ext(spr_pizzascore_pepperoni, panicjiggle, scoreposx, scoreposy, 1, 1, 0, c_white, alpha);
if (_score >= global.crank)
	draw_sprite_ext(spr_pizzascore_pepper, panicjiggle, scoreposx, scoreposy, 1, 1, 0, c_white, alpha);

with (obj_collectparticle)
{
	for (var i = 0; i < ds_list_size(global.collect_list); i++)
		cs += ds_list_find_value(global.collect_list, i).value
}
var sc = string (_score - cs)
draw_text((scoreposx + 155), (scoreposy + 90), string_hash_to_newline(sc))

if fontthing > 0
	fontthing--
else if fontthing < 0
	fontthing++
if red > 0
	red--
if shake > 0
	shake--

//text popup
draw_set_font(global.otherbigfont);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(xi, yi, string_hash_to_newline(message));

//placeholder text
/*draw_set_font(font0);
draw_text(832, 300, string_hash_to_newline(string(obj_player1.hitstun) + " " + "GOLF HIT"));
draw_text(832, 330, string_hash_to_newline(string(global.collect) + " " + "GOLF HIT"));
draw_text(832, 350, string_hash_to_newline(string(obj_player1.state) + " " + "GOLF HIT"));
pal_swap_reset()
shader_reset()