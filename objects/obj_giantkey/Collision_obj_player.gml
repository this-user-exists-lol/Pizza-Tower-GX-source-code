if (picked == 0)
{
    hsp = 0;
    vsp = 0;
    grav = 0;
    
    if (other.object_index == obj_player)
        playerid = 3;
    else
        playerid = 4;
    
    alarm[0] = 150;
    y = playerid.y - 50;
    x = playerid.x;
    
    with (playerid)
    {
        state = 30;
        scr_soundeffect(sfx_secretfound);
        global.giantkey = 1;
    }
    
    obj_hud.showtext = 1;
    obj_hud.message = "GOT THE GIANT KEY!!!";
    obj_hud.alarm[0] = 200;
    global.combotime = 60;
    picked = 1;
}
