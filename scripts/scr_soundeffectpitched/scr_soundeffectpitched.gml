function scr_soundeffectpitched(argument0, argument1)
{
	var snd;
	
	snd = argument0
	audio_play_sound(snd, 1, false, undefined, undefined, random_range(1, argument1), undefined);
}
