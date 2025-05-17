if (playerid.visible == false)
{
    with (obj_player)
    {
        scr_soundeffect(sfx_taxi1);
        state = 0;
        instance_create(x, y, obj_genericpoofeffect);
        cutscene = 0;
		visible = true;
    }
}
