with (other.id)
{
    if (key_up && grounded && (state == 0 || state == 77 || state == 78 || state == 38 || state == 92 || state == 73) && !instance_exists(obj_noisesatellite) && !instance_exists(obj_fadeout) && state != 90 && ((obj_player.spotlight == 1 && object_index == obj_player)))
    {
        with (other.id)
        {
            instance_create(x, y, obj_genericpoofeffect);
            obj_player.visible = false;
            obj_player.sprite_index = obj_player.spr_idle;
            obj_player.hsp = 0;
            obj_player.vsp = 0;
            obj_player.state = 90;
            scr_soundeffect(sfx_taxi2);
            playerid = 3;
            sprite_index = spr_taximove;
            hsp = 10;
            obj_player.cutscene = 1;
        }
    }
}
