var xstretch
var ystretch

if instance_exists(playerid)
{
	if stretchdone < 2
	{
		if playerid.xscale == 1
			xstretch2 = (playerid.xscale + playerid.xscalestretch)
		else if playerid.xscale == -1
			xstretch2 = (playerid.xscale - playerid.xscalestretch)
		else
			xstretch2 = 1
	
		if playerid.yscale == 1
			ystretch2 = (playerid.yscale + playerid.yscalestretch)
		else if playerid.yscale == -1
			ystretch2 = (playerid.yscale - playerid.yscalestretch)
		else
			ystretch2 = 1
		stretchdone += 1
	}
}
else
{
	xstretch = 1
	ystretch = 1
}

xstretch = xstretch2
ystretch = ystretch2

if (playerid = obj_player1)
	pal_swap_set(obj_player1.spr_palette, obj_player1.paletteselect, 0);
draw_sprite_ext(sprite_index, image_index, x, y, xstretch, ystretch, image_angle, image_blend, image_alpha);
