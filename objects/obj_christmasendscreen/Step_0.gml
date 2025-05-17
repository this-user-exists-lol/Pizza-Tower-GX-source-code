if (image_alpha < 1)
    image_alpha += 0.005;

if (image_alpha == 1 && obj_player.key_jump2)
{
    scr_soundeffect(sfx_collectpizza);
    scr_playerreset();
    obj_player.state = 14;
    obj_player.targetDoor = "A";
    room = Realtitlescreen;
}

if (image_alpha == 1)
{
    with (obj_hud)
    {
        message = "MERRY XMAS BREAK!!";
        showtext = 1;
        alarm[0] = 2;
    }
}
