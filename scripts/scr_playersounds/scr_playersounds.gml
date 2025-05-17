function scr_playersounds()
{
	with (obj_player)
	{
	    if (state == 77 && !audio_is_playing(sfx_mach1) && grounded)
	        mach1snd = audio_play_sound(sfx_mach1, 1, false);
	    else if (state != 77 || !grounded || move == -xscale)
	        audio_stop_sound(mach1snd);
	    
	    if ((sprite_index == spr_mach || state == 24) && !audio_is_playing(sfx_mach2))
	        mach2snd = audio_play_sound(sfx_mach2, 1, false);
	    else if (sprite_index != spr_mach && state != 24)
	        audio_stop_sound(mach2snd);
	    
	    if ((state == 92 || sprite_index == spr_mach3boost) && sprite_index != spr_crazyrun && !audio_is_playing(sfx_mach3))
	        mach3snd = audio_play_sound(sfx_mach3, 1, false);
	    else if ((state != 92 && sprite_index != spr_mach3boost) || sprite_index == spr_crazyrun)
	        audio_stop_sound(mach3snd);
	    
	    if ((state == 82 && freefallsmash > 20) && !audio_is_playing(sfx_groundpound2))
	        freefallsnd = audio_play_sound(sfx_groundpound2, 1, false);
	    else if (!(state = 82 && freefallsmash > 20))
	        audio_stop_sound(freefallsnd);
		
	    if (state == 25 && !audio_is_playing(sfx_knightslide))
	        knightslide = audio_play_sound(sfx_knightslide, 1, false);
	    else if (state != 25 && audio_is_playing(sfx_knightslide))
	        audio_stop_sound(knightslide);
	    
	    if ((sprite_index == spr_bombpeprun || sprite_index == spr_bombpeprunabouttoexplode) && !audio_is_playing(sfx_bombpep1))
	        bombpep1snd = audio_play_sound(sfx_bombpep1, 1, false);
	    else if (sprite_index != spr_bombpeprun && sprite_index != spr_bombpeprunabouttoexplode && audio_is_playing(sfx_bombpep1))
	        audio_stop_sound(bombpep1snd);
	    
	    if (sprite_index == spr_crazyrun && !audio_is_playing(sfx_mach4))
	        mach4snd = audio_play_sound(sfx_mach4, 1, false);
	    else if (sprite_index != spr_crazyrun)
	        audio_stop_sound(mach4snd);
	    
	    if (state != 73 && audio_is_playing(superjumpprepsnd))
	        audio_stop_sound(superjumpprepsnd);
	    
	    if (state != 73 && audio_is_playing(superjumpholdsnd))
	        audio_stop_sound(superjumpholdsnd);
		
	    if ((sprite_index == spr_machroll) && !audio_is_playing(sfx_machroll))
	        machrollsnd = audio_play_sound(sfx_machroll, 1, false);
		else if (sprite_index != spr_machroll)
			audio_stop_sound(machrollsnd);
		
	    if (sprite_index == spr_tumblestart && !audio_is_playing(sfx_tumble1) && floor(image_index) < 11)
	        tumble1snd = audio_play_sound(sfx_tumble1, 1, false);
	    
	    if (sprite_index == spr_tumblestart && floor(image_index) == 11 && !audio_is_playing(sfx_tumble2))
	    {
	        tumble2snd = audio_play_sound(sfx_tumble2, 1, false);
	        audio_stop_sound(tumble1snd);
	    }
	    
	    if ((sprite_index == spr_tumble) && !audio_is_playing(sfx_tumble3))
	        tumble3snd = audio_play_sound(sfx_tumble3, 1, false);
	    
	    if (state != 5)
	    {
	        audio_stop_sound(tumble1snd);
	        audio_stop_sound(tumble2snd);
	        audio_stop_sound(tumble3snd);
	    }
	    
	    if (audio_is_playing(suplexdashsnd) && state != 29)
	        audio_stop_sound(suplexdashsnd);
	}
}
