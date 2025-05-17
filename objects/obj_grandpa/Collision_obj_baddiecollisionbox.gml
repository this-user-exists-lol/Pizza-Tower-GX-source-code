with (other.id)
{
    if (instance_exists(baddieID) && baddieID != other.id)
    {
        if ((baddieID.state == 109 && baddieID.thrown == 1) || obj_player.state == 51)
        {
            instance_destroy();
            instance_destroy(baddieID);
            instance_destroy(other.id);
        }
    }
}
