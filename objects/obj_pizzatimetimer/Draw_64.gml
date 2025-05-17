draw_set_font(global.bigfont)
draw_set_halign(fa_center)
draw_set_color(c_white)
if (global.panic == 1 || global.snickchallenge == 1 || global.miniboss == 1 || global.timedgate == 1)
{
	if (global.seconds < 10)
	{
		if (global.minutes < 1)
			draw_set_color(c_red)
		else
			draw_set_color(c_white)
		draw_text(((random_range(1, -1)) + 480), ((random_range(1, -1)) + timery), string_hash_to_newline(string(global.minutes) + ":0" + string(global.seconds)))
	}
	else if (global.seconds >= 10)
	{
		if (global.minutes == 0 && global.seconds <= 30)
			draw_set_color(c_red)
		else
			draw_set_color(c_white)
		draw_text(((random_range(1, -1)) + 480), ((random_range(1, -1)) + timery), string_hash_to_newline(string(global.minutes) + ":" + string(global.seconds)))
	}
	
	draw_sprite_ext(timersprite, image_index, 600, timery, 1, 1, 0, c_white, 1)
	if (global.minutes == 0) && (global.seconds == 0)
	{
		if (animation_end() && sprite_index = spr_escapetimerstartring)
		{
			timersprite = spr_escapetimerring
			showtimer = 0
		}
		else if timersprite = spr_escapetimertick
			timersprite = spr_escapetimerstartring
	}
	else
		timersprite = spr_escapetimertick
}
else
	showtimer = 0
if showtimer ==	1
{
	if timery > 465
		timery--
}
else
{
	if timery < 600
		timery++
}