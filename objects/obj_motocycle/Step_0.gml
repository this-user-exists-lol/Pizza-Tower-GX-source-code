if (grabbed == 1)
{
    image_xscale = -obj_player.xscale;
    grav = 0;
    obj_player.baddiegrabbedID = id;
    
    if (obj_player.state == 35 || obj_player.state == 54 || obj_player.state == 49 || obj_player.state == 50 || obj_player.state == 16)
    {
        grounded = 0;
        x = obj_player.x;
        
        if (obj_player.sprite_index != spr_player_haulingstart)
            y = obj_player.y - 40;
        else if (floor(obj_player.image_index) == 0)
            y = obj_player.y;
        else if (floor(obj_player.image_index) == 1)
            y = obj_player.y - 10;
        else if (floor(obj_player.image_index) == 2)
            y = obj_player.y - 20;
        else if (floor(obj_player.image_index) == 3)
            y = obj_player.y - 30;
        
        image_xscale = -obj_player.xscale;
    }
    
    with (obj_player)
    {
        scr_getinput();
        move = key_left2 + key_right2;
        
        if (!(state == 54 || state == 35 || state == 49 || state == 50 || state == 16 || state == 55 || state == 51 || state == 56 || state == 57 || state == 58))
        {
            other.x = x;
            other.y = y;
            other.grabbed = 0;
        }
    }
    
    hsp = 0;
    
    if (obj_player.state == 55)
    {
        instance_create(x + (obj_player.xscale * 30), y, obj_bumpeffect);
        grabbed = 0;
        grav = 0.5;
        x = obj_player.x;
        vsp = 0;
        y = obj_player.y - 5;
        thrown = 1;
        hsp = -image_xscale * 25;
        grav = 0;
        instance_create(x, y, obj_slapstar);
        instance_create(x, y, obj_baddiegibs);
        
        with (obj_camera)
        {
            shake_mag = 3;
            shake_mag_acc = 3 / room_speed;
        }
    }
    
    if (obj_player.state == 58)
    {
        grav = 0.5;
        instance_create(x, y + 20, obj_bumpeffect);
        grabbed = 0;
        thrown = 1;
        x = obj_player.x;
        y = obj_player.y;
        
        if (obj_player.sprite_index == spr_player_shoulder)
            vsp = 15;
        
        if (obj_player.sprite_index == spr_player_diagonaldownthrow)
        {
            hsp = -image_xscale * 10;
            vsp = 15;
        }
        
        if (obj_player.sprite_index == spr_player_diagonalupthrow)
        {
            hsp = -image_xscale * 10;
            vsp = -15;
        }
        
        instance_create(x, y, obj_slapstar);
        instance_create(x, y, obj_baddiegibs);
        
        with (obj_camera)
        {
            shake_mag = 3;
            shake_mag_acc = 3 / room_speed;
        }
    }
    
    if (obj_player.state == 49)
    {
        grav = 0.5;
        grabbed = 0;
        thrown = 1;
        x = obj_player.x;
        y = obj_player.y;
        hsp = -image_xscale * 10;
        vsp = -10;
    }
    
    if (obj_player.state == 57)
    {
        instance_create(x + (-obj_player.xscale * 15), y - 50, obj_bumpeffect);
        grav = 0.5;
        thrown = 1;
        x = obj_player.x;
        y = obj_player.y;
        hsp = -image_xscale * 2;
        grabbed = 0;
        vsp = -20;
        instance_create(x, y, obj_slapstar);
        instance_create(x, y, obj_baddiegibs);
        flash = 1;
        
        with (obj_camera)
        {
            shake_mag = 3;
            shake_mag_acc = 3 / room_speed;
        }
    }
    
    if (obj_player.state == 16)
    {
        x = obj_player.x + (obj_player.xscale * 15);
        y = obj_player.y;
    }
    
    if (obj_player.state == 51)
    {
        if (obj_player.character == "P")
        {
            if (floor(obj_player.image_index) == 0)
            {
                depth = 0;
                x = obj_player.x + (obj_player.xscale * 10);
                y = obj_player.y;
            }
            
            if (floor(obj_player.image_index) == 1)
            {
                depth = 0;
                x = obj_player.x + (obj_player.xscale * 5);
                y = obj_player.y;
            }
            
            if (floor(obj_player.image_index) == 2)
            {
                depth = 0;
                x = obj_player.x;
                y = obj_player.y;
            }
            
            if (floor(obj_player.image_index) == 3)
            {
                depth = 0;
                x = obj_player.x + (obj_player.xscale * -5);
                y = obj_player.y;
            }
            
            if (floor(obj_player.image_index) == 4)
            {
                depth = 0;
                x = obj_player.x + (obj_player.xscale * -10);
                y = obj_player.y;
            }
            
            if (floor(obj_player.image_index) == 5)
            {
                depth = -8;
                x = obj_player.x + (obj_player.xscale * -5);
                y = obj_player.y;
            }
            
            if (floor(obj_player.image_index) == 6)
            {
                depth = -8;
                x = obj_player.x;
                y = obj_player.y;
            }
            
            if (floor(obj_player.image_index) == 7)
            {
                depth = -8;
                x = obj_player.x + (obj_player.xscale * 5);
                y = obj_player.y;
            }
        }
        else
        {
            depth = -7;
            x = obj_player.x;
            y = obj_player.y - 40;
        }
        
        if (obj_player.sprite_index == obj_player.spr_piledriverland)
        {
            instance_create(x, y, obj_slapstar);
            instance_create(x, y, obj_baddiegibs);
            grabbed = 0;
            thrown = 1;
            x = obj_player.x;
            y = obj_player.y;
            grav = 0.5;
            hsp = -image_xscale * 10;
            vsp = -10;
        }
    }
}

if (vsp > 0 && grounded)
    hsp = 0;

if (place_meeting(x + hsp, y, obj_solid) && thrown == 1)
    instance_destroy();

if (grounded == 1 && thrown == 1 && vsp > 0)
    instance_destroy();

if (grabbed == 0)
    scr_collide();
