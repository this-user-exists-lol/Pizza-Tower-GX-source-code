with (other.id)
{
    if (state == 29 || state == 55)
    {
        state = 21;
        sprite_index = spr_rideweenie;
        xscale = other.image_xscale;
        vsp = -11;
        jumpstop = 1;
        movespeed = 0;
        grounded = 0;
        
        with (instance_create(x, y, obj_jumpdust))
            image_xscale = other.xscale;
        
        instance_destroy(other.id);
    }
}
