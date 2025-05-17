with (obj_player)
{
    if (character != "V")
    {
        if ((place_meeting(x + hsp, y, other.id) || place_meeting(x + xscale, y, other.id)) && (obj_player.state == 92 || obj_player.state == 25))
            instance_destroy(other.id);
    }
}

if (place_meeting(x, y + 1, obj_player) || place_meeting(x, y - 1, obj_player) || place_meeting(x - 1, y, obj_player) || place_meeting(x + 1, y, obj_player))
{
    if (place_meeting(x, y - 1, obj_player) && (obj_player.state == 82 && obj_player.freefallsmash >= 20))
        instance_destroy();
    
    if (place_meeting(x, y - 1, obj_player) && (obj_player.state == 31 || obj_player.state == 15))
    {
        instance_destroy();
        tile_layer_delete_at(1, x, y);
    }
}
