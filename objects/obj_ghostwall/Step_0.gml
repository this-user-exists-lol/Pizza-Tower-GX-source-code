if ((obj_player.state == 13) && away == 0)
{
    away = 1;
    x = -200;
    y = 100;
}
else if (away == 1 && obj_player.state != 13)
{
    away = 0;
    x = xstart;
    y = ystart;
}
