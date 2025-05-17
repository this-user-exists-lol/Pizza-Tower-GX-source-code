with (obj_player)
{
    if ((state == 31 || state == 32 || state == 25) && cutscene == 0)
    {
        instance_destroy(other.id);
    }
    else if (state == 34 && hurted == 0)
    {
    }
    else if (state == 22)
    {
    }
    else if (state == 19 || state == 20)
    {
    }
    else if (state != 81 && cutscene == 0 && state != 80)
    {
        xscale = -other.image_xscale;
        hsp = other.image_xscale * 10;
        
        if (other.sprite_index != spr_grandpa_punch)
        {
            other.image_index = 0;
            other.sprite_index = spr_grandpa_punch;
        }
        
        global.hurtcounter += 1;
        alarm[8] = 60;
        alarm[7] = 120;
        hurted = 1;
        
        if (xscale == other.image_xscale)
            sprite_index = spr_hurtjump;
        else
            sprite_index = spr_hurt;
        
        movespeed = 8;
        vsp = -5;
        timeuntilhpback = 300;
        
        if (global.collect > 100)
            global.collect -= 100;
        else
            global.collect = 0;
        
        if (global.collect != 0)
        {
            instance_create(x, y, obj_pizzaloss);
            instance_create(x, y, obj_pizzaloss);
            instance_create(x, y, obj_pizzaloss);
            instance_create(x, y, obj_pizzaloss);
            instance_create(x, y, obj_pizzaloss);
            instance_create(x, y, obj_pizzaloss);
            instance_create(x, y, obj_pizzaloss);
            instance_create(x, y, obj_pizzaloss);
            instance_create(x, y, obj_pizzaloss);
            instance_create(x, y, obj_pizzaloss);
            instance_create(x, y, obj_pizzaloss);
            instance_create(x, y, obj_pizzaloss);
        }
        
        instance_create(x, y, obj_spikehurteffect);
        state = 81;
        image_index = 0;
        flash = 1;
    }
}
