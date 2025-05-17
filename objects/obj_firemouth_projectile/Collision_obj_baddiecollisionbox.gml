with (other.id)
{
    if (instance_exists(baddieID) && baddieID.state != 119 && baddieID.object_index != obj_tank && !baddieID.invincible)
    {
        instance_destroy();
        instance_destroy(baddieID);
    }
}
