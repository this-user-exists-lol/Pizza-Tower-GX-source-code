with (obj_teleporter)
{
    if (trigger == other.trigger && start == 0)
    {
        player.x = x;
        player.y = y - 20;
    }
}

alarm[1] = 10;
