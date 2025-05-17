if (other.id != sign_id)
    exit;

if (playerid.visible == false)
{
    with (obj_player)
    {
        scr_soundeffect(sfx_taxi1);
        state = 0;
        cutscene = 0;
    }
    obj_player.visible = true;
}
