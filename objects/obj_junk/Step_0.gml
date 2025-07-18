if (grounded && grabbed == 0)
    thrown = 0;

if (grabbed == 1)
{
    image_xscale = -playerid.xscale;
    grav = 0;
    playerid.baddiegrabbedID = id;
    
    if (playerid.state == 6 || playerid.state == 35 || playerid.state == 54 || playerid.state == 49 || playerid.state == 50 || playerid.state == 16)
    {
        thrown = 0;
        grav = 0;
        grounded = 0;
        x = playerid.x;
        
        if (playerid.sprite_index != spr_player_haulingstart && playerid.state != 6)
            y = playerid.y - 60;
        else if (floor(playerid.image_index) == 0)
            y = playerid.y - 20;
        else if (floor(playerid.image_index) == 1)
            y = playerid.y - 30;
        else if (floor(playerid.image_index) == 2)
            y = playerid.y - 40;
        else if (floor(playerid.image_index) == 3)
            y = playerid.y - 50;
        
        image_xscale = -playerid.xscale;
    }
    
    with (playerid)
    {
        scr_getinput();
        move = key_left2 + key_right2;
        
        if (!(state == 6 || state == 54 || state == 35 || state == 49 || state == 50 || state == 16 || state == 55 || state == 51 || state == 56 || state == 57 || state == 58))
        {
            other.grav = 0.5;
            other.x = x;
            other.y = y;
            other.grabbed = 0;
        }
    }
    
    hsp = 0;
    
    if (playerid.state == 6)
    {
        x = playerid.x + (playerid.xscale * 50);
        y = playerid.y;
    }
    
    if (playerid.state == 54 && playerid.sprite_index == playerid.spr_swingding)
    {
        if (floor(playerid.image_index) == 0)
        {
            depth = -8;
            x = playerid.x + (playerid.xscale * 25);
            y = playerid.y;
        }
        
        if (floor(playerid.image_index) == 1)
        {
            depth = -8;
            x = playerid.x;
            y = playerid.y;
        }
        
        if (floor(playerid.image_index) == 2)
        {
            depth = -8;
            x = playerid.x + (playerid.xscale * -25);
            y = playerid.y;
        }
        
        if (floor(playerid.image_index) == 3)
        {
            depth = 0;
            x = playerid.x + (playerid.xscale * -50);
            y = playerid.y;
        }
        
        if (floor(playerid.image_index) == 4)
        {
            depth = 0;
            x = playerid.x + (playerid.xscale * -25);
            y = playerid.y;
        }
        
        if (floor(playerid.image_index) == 5)
        {
            depth = 0;
            x = playerid.x;
            y = playerid.y;
        }
        
        if (floor(playerid.image_index) == 6)
        {
            depth = 0;
            x = playerid.x + (playerid.xscale * 25);
            y = playerid.y;
        }
        
        if (floor(playerid.image_index) == 7)
        {
            depth = 0;
            x = playerid.x + (playerid.xscale * 50);
            y = playerid.y;
        }
    }
    
    if (playerid.state == 58)
    {
        grav = 0.5;
        instance_create(x, y + 20, obj_bumpeffect);
        grabbed = 0;
        thrown = 1;
        x = playerid.x;
        y = playerid.y;
        
        if (playerid.sprite_index == spr_player_shoulder)
            vsp = 15;
        
        if (playerid.sprite_index == spr_player_diagonaldownthrow)
        {
            hsp = -image_xscale * 10;
            vsp = 15;
        }
        
        if (playerid.sprite_index == spr_player_diagonalupthrow)
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
    
    if (playerid.state == 49)
    {
        grav = 0.5;
        grabbed = 0;
        thrown = 1;
        x = playerid.x;
        y = playerid.y;
        hsp = -image_xscale * 10;
        vsp = -10;
    }
    
    if (playerid.state == 57)
    {
        instance_create(x + (-playerid.xscale * 15), y - 50, obj_bumpeffect);
        grav = 0.5;
        thrown = 1;
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
    
    if (playerid.state == 16)
    {
        x = playerid.x + (playerid.xscale * 15);
        y = playerid.y;
    }
    
    if (playerid.state == 51)
    {
        if (playerid.character == "P")
        {
            if (floor(playerid.image_index) == 0)
            {
                depth = 0;
                x = playerid.x + (playerid.xscale * 10);
                y = playerid.y;
            }
            
            if (floor(playerid.image_index) == 1)
            {
                depth = 0;
                x = playerid.x + (playerid.xscale * 5);
                y = playerid.y;
            }
            
            if (floor(playerid.image_index) == 2)
            {
                depth = 0;
                x = playerid.x;
                y = playerid.y;
            }
            
            if (floor(playerid.image_index) == 3)
            {
                depth = 0;
                x = playerid.x + (playerid.xscale * -5);
                y = playerid.y;
            }
            
            if (floor(playerid.image_index) == 4)
            {
                depth = 0;
                x = playerid.x + (playerid.xscale * -10);
                y = playerid.y;
            }
            
            if (floor(playerid.image_index) == 5)
            {
                depth = -8;
                x = playerid.x + (playerid.xscale * -5);
                y = playerid.y;
            }
            
            if (floor(playerid.image_index) == 6)
            {
                depth = -8;
                x = playerid.x;
                y = playerid.y;
            }
            
            if (floor(playerid.image_index) == 7)
            {
                depth = -8;
                x = playerid.x + (playerid.xscale * 5);
                y = playerid.y;
            }
        }
        else
        {
            depth = -7;
            x = playerid.x;
            y = playerid.y - 40;
        }
        
        if (playerid.sprite_index == playerid.spr_piledriverland)
        {
            instance_create(x, y, obj_slapstar);
            instance_create(x, y, obj_baddiegibs);
            grabbed = 0;
            thrown = 1;
            x = playerid.x;
            y = playerid.y;
            grav = 0.5;
            hsp = -image_xscale * 10;
            vsp = -10;
        }
    }
}

if (vsp > 0 && grounded)
    hsp = 0;

if (grabbed == 0)
    scr_collide();

if (place_meeting(x, y, obj_swordhitbox) && thrown == 0)
{
    grabbed = 0;
    thrown = 1;
    instance_create(x, y, obj_slapstar);
    instance_create(x, y, obj_slapstar);
    instance_create(x, y, obj_slapstar);
    instance_create(x, y, obj_baddiegibs);
    instance_create(x, y, obj_baddiegibs);
    instance_create(x, y, obj_baddiegibs);
    
    with (obj_camera)
    {
        shake_mag = 3;
        shake_mag_acc = 3 / room_speed;
    }
    
    state = 81;
    
    if (scr_solid(x, y))
    {
        x = playerid.x;
        y = playerid.y;
    }
    
    grav = 0.5;
    other.alarm[8] = 60;
    other.alarm[7] = 120;
    
    with (playerid)
    {
        move = key_right + key_left;
        
        if (sprite_index == spr_uppercutfinishingblow)
        {
            other.vsp = -25;
        }
        else
        {
            other.hsp = xscale * 15;
            other.vsp = -6;
        }
    }
}
