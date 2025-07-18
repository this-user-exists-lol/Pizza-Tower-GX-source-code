if (instance_exists(obj_noisecrusher))
{
    image_speed = 0.35;
    
    if (global.bosshealth == 8)
    {
        draw_sprite_ext(spr_pizzahealthbar, 0, 862, 80, 1, 1, 1, c_white, alpha);
    }
    else if (global.bosshealth == 7)
    {
        draw_sprite_ext(spr_pizzahealthbar, 1, 862, 80, 1, 1, 1, c_white, alpha);
    }
    else if (global.bosshealth == 6)
    {
        draw_sprite_ext(spr_pizzahealthbar, 2, 862, 80, 1, 1, 1, c_white, alpha);
    }
    else if (global.bosshealth == 5)
    {
        draw_sprite_ext(spr_pizzahealthbar, 3, 862, 80, 1, 1, 1, c_white, alpha);
    }
    else if (global.bosshealth == 4)
    {
        draw_sprite_ext(spr_pizzahealthbar, 4, 862, 80, 1, 1, 1, c_white, alpha);
    }
    else if (global.bosshealth == 3)
    {
        draw_sprite_ext(spr_pizzahealthbar, 5, 862, 80, 1, 1, 1, c_white, alpha);
    }
    else if (global.bosshealth == 2)
    {
        draw_sprite_ext(spr_pizzahealthbar, 6, 862, 80, 1, 1, 1, c_white, alpha);
    }
    else if (global.bosshealth == 1)
    {
        draw_sprite_ext(spr_pizzahealthbar, 7, 862, 80, 1, 1, 1, c_white, alpha);
    }
    else
    {
    }
    
    draw_sprite_ext(noisesprite, -1, 832, 100, 1, 1, 1, c_white, alpha);
    
    if (obj_player.state == 81)
    {
        noisesprite = spr_noiseHUD_happy;
    }
    else if (obj_noisecrusher.state == 109 || obj_noisecrusher.state == 119)
    {
        noisesprite = spr_noiseHUD_hurt;
    }
    else if (global.bosshealth <= 3)
    {
        noisesprite = spr_noiseHUD_lowhealth;
    }
    else if (!(global.bosshealth <= 0))
    {
        noisesprite = spr_noiseHUD_idle;
    }
    else
    {
    }
}
