function scr_voice(type)
{
	var randomi = random_range(0, 50)
	if (randomi > 30)
	{
		switch type
		{
			case "positive":
				scr_soundeffect(choose(sfx_voiceP6, sfx_voiceP7))
			break
			case "negative":
				scr_soundeffect(choose(sfx_voiceP9, sfx_voiceP10, sfx_voiceP11, sfx_voiceP1))
			break
			case "neutral":
				scr_soundeffect(choose(sfx_voiceP1, sfx_voiceP2, sfx_voiceP3, sfx_voiceP4, sfx_voiceP5, sfx_voiceP6, sfx_voiceP7))
			break
		}
	}
}