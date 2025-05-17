if (other.state == 29 || other.state == 55)
{
    instance_create(x + (obj_player.xscale * 40), y, obj_punchdust);
    
    with (other.id)
    {
        image_index = 0;
        sprite_index = spr_haulingstart;
        baddiegrabbedID = other.id;
        state = 54;
    }
    
    playerid = other.object_index;
    grabbed = 1;
}

if (other.state == 78 || other.state == 92 || (other.state == 45 && grounded))
{
    instance_create(x, y, obj_genericpoofeffect);
    
    with (other.id)
    {
        vsp = 0;
        mask_index = spr_crouchmask;
        x = other.x;
        y = other.y;
        state = 87;
        sprite_index = spr_player_barrelroll;
        movespeed = 12;
    }
    
    instance_destroy();
}
