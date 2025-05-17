draw_self();

if (func == 1)
{
    xx = x;
    yy = y;
    
    switch (sprite_get_width(spr))
    {
        case 32:
            xx = x + 8;
            yy = y + 8;
            break;
        
        case 100:
            scale = 0.2;
            break;
    }
    
    if (sprite_get_xoffset(spr) >= 50)
    {
        xx = x + 16;
        yy = y + 16;
    }
    
    if (sprite_get_width(spr) >= 500)
    {
        scale = 0.01;
        xx = x + 8;
        yy = y + 8;
    }
    
    switch (spr)
    {
        case 1751:
            xx = x + 16;
            yy = y + 16;
            scale = 0.4;
            break;
        
        case 397:
            xx = x + 16;
            yy = y + 12;
            scale = 0.4;
            break;
        
        case 98:
            xx = x + 16;
            yy = y + 16;
            scale = 0.15;
            break;
        
        case 1322:
            xx = x;
            yy = y;
            scale = 0.3;
            break;
        
        case 1321:
            xx = x;
            yy = y;
            scale = 0.3;
            break;
        
        case 1326:
            xx = x + 16;
            yy = y + 16;
            scale = 0.8;
            break;
        
        case 1212:
            xx = x + 12;
            yy = y;
            scale = 0.35;
            break;
        
        case 1199:
            xx = x + 12;
            yy = y + 50;
            scale = 0.4;
            break;
        
        case 1198:
            xx = x + 12;
            yy = y + 25;
            scale = 0.4;
            break;
        
        case 1270:
            xx = x + 16;
            yy = y + 16;
            scale = 0.4;
            break;
        
        case 1278:
            xx = x + 16;
            yy = y + 16;
            scale = 0.2;
            break;
    }
    
    draw_sprite_ext(spr, 0, xx, yy, scale * image_xscale, scale * image_yscale, 0, c_white, 1);
}

if (position_meeting(mouse_x, mouse_y, id))
    show_text = 1;
else
    show_text = 0;
