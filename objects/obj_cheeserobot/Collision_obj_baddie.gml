with (other.id)
{
    if ((other.state == 109 && other.thrown == 1) || (other.state == 119 && obj_player.state == 51))
        instance_destroy();
}
