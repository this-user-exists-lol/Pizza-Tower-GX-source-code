instance_create(x + (obj_player.xscale * 40), y, obj_punchdust);

with (obj_player)
{
    image_index = 0;
    sprite_index = spr_player_haulingstart;
    
    if (other.heavy == 1)
        heavy = 1;
    else
        heavy = 0;
    
    state = 54;
}

state = 119;
instance_destroy(other.id);
