if (other.state == 29 || other.state == 55)
{
    instance_create(x + (obj_player.xscale * 40), y, obj_punchdust);
    
    with (other.id)
    {
        image_index = 0;
        sprite_index = spr_haulingstart;
        heavy = 1;
        baddiegrabbedID = other.id;
        state = 54;
    }
    
    playerid = other.object_index;
    grabbed = 1;
}
