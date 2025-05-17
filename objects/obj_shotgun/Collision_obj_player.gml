if (obj_player.shotgunAnim == 0 && obj_player.backupweapon == 0 && obj_player.state == 29)
{
	obj_player.shotgunAnim = 1;
	obj_player.state = 46;
	obj_player.image_index = 0;
	obj_player.sprite_index = obj_player.spr_shotgunpullout;
	global.gotshotgun = 1;
	scr_soundeffect(sfx_shotgungot);
	instance_destroy();
	with (obj_hud)
	{
		image_speed = 0.25;
		message = choose("ITS TIME TO KICK ASS", "...AND IM ALL OUT OF ASS", "KICKING ASS AND CHEWING ASS", "ITS TIME TO ASS", "IM ALL OUT OF BUBBLE GUM", "ITS TIME TO CHEW BUBBLE GUM AND KICK ASS", "ITS TIME TO KICK BUBBLE GUM", "ITS TIME FOR AN ASS KICKING", "ITS TIME FOR BUBBLE GUM", "ITS TIME TO CHEW ASS");
		alarm[0] = 200;
		showtext = 1;
		tvsprite = spr_tvdook;
	}
}