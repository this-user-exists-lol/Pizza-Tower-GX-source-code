global.optimize = 0;
global.autotile = 1;
global.font_small = font_add_sprite_ext(spr_smallfont, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!._1234567890:?", 1, -2);
pal_swap_init_system(0);
global.loadeditor = 0;
audio_group_load(music)
audio_group_load(sounds)
enum enemy_states{
	walk, 
	stun,
	sleep,
	attack,
	scared,
	thrown,
	grabbed,
	throwprojectile,
	hitstunned,
}
enum macheffect_type{
	mach3,
	transparent,
	colored,
}
