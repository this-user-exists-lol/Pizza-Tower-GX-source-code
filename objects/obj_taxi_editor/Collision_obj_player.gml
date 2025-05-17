if (index < 0)
    exit;

if ((obj_player.state != 90 || obj_player2.state != 90) && sprite_index == spr_taxiidle)
{
    with (obj_stopsign_editor)
    {
        if (index == other.index)
        {
            other.sign_id = id;
            other.xx = x;
            other.yy = y;
        }
    }
    
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
    
    if (global.coop == 1)
    {
        obj_player2.sprite_index = obj_player2.spr_idle;
        scr_soundeffect(sfx_taxi2);
        playerid = 4;
        sprite_index = spr_taximove;
        hsp = 10;
        obj_player2.visible = false;
        obj_player2.hsp = 0;
        obj_player2.vsp = 0;
        obj_player2.state = 90;
        obj_player2.cutscene = 1;
    }
}
