if (room == rm_editor)
    exit;

if (obj_player.state == 31 || obj_player.state == 32 || obj_player.state == 25)
    sprite_index = spr_swordstonetaken;
else
    sprite_index = spr_swordstone;

if (sprite_index == spr_swordstone && !instance_exists(ID))
{
    with (instance_create(x, y - 20, obj_grabmarker))
        other.ID = id;
}
else if (sprite_index == spr_swordstonetaken && instance_exists(ID))
{
    instance_destroy(ID);
}
