if (room == rm_editor)
    exit;

if (obj_player.character == "V" && place_meeting(x, y - 1, obj_player))
{
    scr_hurtplayer(3);
}
else
{
    if (place_meeting(x, y - 1, obj_player) && obj_player.state != 3 && obj_player.state != 63 && obj_player.state != 21)
    {
        obj_player.state = 9;
        obj_player.image_index = 0;
        obj_player.vsp = -25;
        obj_player.sprite_index = obj_player.spr_fireass;
        
        if (!audio_is_playing(sfx_scream5))
            scr_soundeffect(sfx_scream5);
    }
}
