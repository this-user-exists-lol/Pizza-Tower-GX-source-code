instance_create(x + (obj_player.xscale * 40), y, obj_punchdust);

with (obj_player)
{
    image_index = 0;
    sprite_index = spr_player_haulingstart;
    heavy = 1;
    baddiegrabbedID = other.id;
    state = 54;
}

grabbed = 1;
