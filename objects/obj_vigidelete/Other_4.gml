if (obj_player.character == "V")
{
    with (all)
    {
        if (place_meeting(x, y, other.id))
            instance_destroy();
    }
}
