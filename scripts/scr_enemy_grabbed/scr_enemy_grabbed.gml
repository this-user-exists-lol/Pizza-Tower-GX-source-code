function scr_enemy_grabbed()
{
	var player;
	
	if (object_index == obj_treasureguy)
	{
	    player = asset_get_index("obj_player" + string(grabbedby));
	    
	    with (player)
	    {
	        sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4, spr_punch);
	        image_index = 0;
	        state = 65;
	        movespeed = 3;
	        vsp = -3;
	    }
	    
	    instance_destroy();
	}
	
	if (grabbedby == 1)
	{
	    image_xscale = -obj_player.xscale;
	    stunned = 200;
	    obj_player.baddiegrabbedID = id;
	    
	    if (obj_player.state == 35 || obj_player.state == 54 || obj_player.state == 49 || obj_player.state == 50 || obj_player.state == 16)
	    {
	        x = obj_player.x;
	        
	        if (obj_player.sprite_index != obj_player.spr_haulingstart)
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
	        suplexhavetomash = other.hp - 1;
	        scr_getinput();
	        move = key_left2 + key_right2;
	        
	        if (key_slap && sprite_index == spr_grab)
	        {
	            global.hit += 1;
	            
	            if (other.object_index == obj_pizzaball)
	                global.golfhit += 1;
	            
	            global.combotime = 60;
	            image_index = 0;
	            sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4);
	            other.hp -= 1;
	            instance_create(other.x, other.y, obj_slapstar);
	            instance_create(other.x, other.y, obj_baddiegibs);
	            other.flash = 1;
	            
	            with (obj_camera)
	            {
	                shake_mag = 3;
	                shake_mag_acc = 3 / room_speed;
	            }
	        }
	        
	        if (!(state == 54 || state == 6 || state == 35 || state == 49 || state == 50 || state == 16 || state == 55 || state == 51 || state == 56 || state == 57 || state == 58))
	        {
	            other.x = x;
	            other.y = y;
	            other.state = 109;
	            other.image_index = 0;
	        }
	    }
	    
	    hsp = 0;
	    
	    if (obj_player.state == 55 || obj_player.state == 118)
	    {
	        alarm[3] = 3;
	        global.hit += 1;
	        
	        if (other.object_index == obj_pizzaball)
	            global.golfhit += 1;
	        
	        hp -= 1;
	        instance_create(x + (obj_player.xscale * 30), y, obj_bumpeffect);
	        alarm[1] = 5;
	        thrown = 1;
	        x = obj_player.x;
	        vsp = 0;
	        y = obj_player.y;
	        state = 109;
	        hsp = -image_xscale * 25;
	        grav = 0;
	        global.combotime = 60;
	        instance_create(x, y, obj_slapstar);
	        instance_create(x, y, obj_baddiegibs);
	        flash = 1;
	        
	        with (obj_camera)
	        {
	            shake_mag = 3;
	            shake_mag_acc = 3 / room_speed;
	        }
	    }
	    
	    if (obj_player.state == 6 && obj_player.image_index < 5)
	    {
	        x = obj_player.x + (obj_player.xscale * 60);
	        y = obj_player.y;
	    }
	    
	    if (obj_player.state == 56)
	    {
	        alarm[3] = 3;
	        global.hit += 1;
	        
	        if (other.object_index == obj_pizzaball)
	            global.golfhit += 1;
	        
	        hp -= 1;
	        instance_create(x + (-obj_player.xscale * 50), y, obj_bumpeffect);
	        alarm[1] = 5;
	        thrown = 1;
	        x = obj_player.x;
	        y = obj_player.y;
	        state = 109;
	        image_xscale *= -1;
	        hsp = -image_xscale * 20;
	        vsp = -7;
	        global.combotime = 60;
	        instance_create(x, y, obj_slapstar);
	        instance_create(x, y, obj_baddiegibs);
	        flash = 1;
	        
	        with (obj_camera)
	        {
	            shake_mag = 3;
	            shake_mag_acc = 3 / room_speed;
	        }
	    }
	    
	    if (obj_player.state == 58)
	    {
	        alarm[3] = 3;
	        global.hit += 1;
	        
	        if (other.object_index == obj_pizzaball)
	            global.golfhit += 1;
	        
	        hp -= 1;
	        instance_create(x, y + 20, obj_bumpeffect);
	        alarm[1] = 5;
	        thrown = 1;
	        x = obj_player.x;
	        y = obj_player.y;
	        state = 109;
	        
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
	        
	        global.combotime = 60;
	        instance_create(x, y, obj_slapstar);
	        instance_create(x, y, obj_baddiegibs);
	        flash = 1;
	        
	        with (obj_camera)
	        {
	            shake_mag = 3;
	            shake_mag_acc = 3 / room_speed;
	        }
	    }
	    
	    if (place_meeting(x, y, obj_swordhitbox))
	    {
	        hp -= 1;
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
	        
	        alarm[3] = 3;
	        global.hit += 1;
	        
	        if (other.object_index == obj_pizzaball)
	            global.golfhit += 1;
	        
	        global.combotime = 60;
	        alarm[1] = 5;
	        thrown = 1;
	        state = 109;
	        
	        with (obj_player)
	        {
	            move = key_right + key_left;
	            
	            if (sprite_index == spr_uppercutfinishingblow)
	            {
	                other.hsp = 0;
	                other.vsp = -25;
	            }
	            else
	            {
	                other.hsp = -other.image_xscale * 25;
	                other.vsp = -6;
	            }
	        }
	    }
	    
	    if (obj_player.state == 49)
	    {
	        global.hit += 1;
	        
	        if (other.object_index == obj_pizzaball)
	            global.golfhit += 1;
	        
	        alarm[1] = 5;
	        thrown = 1;
	        x = obj_player.x;
	        y = obj_player.y;
	        state = 109;
	        hsp = -image_xscale * 8;
	        vsp = -6;
	    }
	    
	    if (obj_player.state == 57)
	    {
	        alarm[3] = 3;
	        global.hit += 1;
	        
	        if (other.object_index == obj_pizzaball)
	            global.golfhit += 1;
	        
	        hp -= 1;
	        instance_create(x + (-obj_player.xscale * 15), y - 50, obj_bumpeffect);
	        alarm[1] = 5;
	        thrown = 1;
	        x = obj_player.x;
	        y = obj_player.y;
	        hsp = -image_xscale * 2;
	        state = 109;
	        vsp = -20;
	        global.combotime = 60;
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
	    
	    if (obj_player.state == 51 && obj_player.sprite_index == obj_player.spr_piledriver)
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
	    }
	    
	    if (obj_player.sprite_index == obj_player.spr_piledriverland && floor(obj_player.image_index) == (obj_player.image_number - 1))
	    {
	        with (obj_player)
	        {
	            state = 66;
	            vsp = -8;
	            sprite_index = spr_machfreefall;
	        }
	        
	        instance_create(x, y, obj_slapstar);
	        instance_create(x, y, obj_baddiegibs);
	        flash = 1;
	        global.combotime = 60;
	        global.hit += 1;
	        hp -= 5;
	        alarm[1] = 5;
	        thrown = 1;
	        x = obj_player.x;
	        y = obj_player.y;
	        state = 109;
	        hsp = -image_xscale * 10;
	        vsp = -10;
	    }
	    
	    if (obj_player.state == 54 && obj_player.sprite_index == obj_player.spr_swingding)
	    {
	        if (floor(obj_player.image_index) == 0)
	        {
	            depth = -8;
	            x = obj_player.x + (obj_player.xscale * 25);
	            y = obj_player.y;
	        }
	        
	        if (floor(obj_player.image_index) == 1)
	        {
	            depth = -8;
	            x = obj_player.x;
	            y = obj_player.y;
	        }
	        
	        if (floor(obj_player.image_index) == 2)
	        {
	            depth = -8;
	            x = obj_player.x + (obj_player.xscale * -25);
	            y = obj_player.y;
	        }
	        
	        if (floor(obj_player.image_index) == 3)
	        {
	            depth = 0;
	            x = obj_player.x + (obj_player.xscale * -50);
	            y = obj_player.y;
	        }
	        
	        if (floor(obj_player.image_index) == 4)
	        {
	            depth = 0;
	            x = obj_player.x + (obj_player.xscale * -25);
	            y = obj_player.y;
	        }
	        
	        if (floor(obj_player.image_index) == 5)
	        {
	            depth = 0;
	            x = obj_player.x;
	            y = obj_player.y;
	        }
	        
	        if (floor(obj_player.image_index) == 6)
	        {
	            depth = 0;
	            x = obj_player.x + (obj_player.xscale * 25);
	            y = obj_player.y;
	        }
	        
	        if (floor(obj_player.image_index) == 7)
	        {
	            depth = 0;
	            x = obj_player.x + (obj_player.xscale * 50);
	            y = obj_player.y;
	        }
	    }
	}
}