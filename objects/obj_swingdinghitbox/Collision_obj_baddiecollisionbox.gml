with (other.id)
{
    if (instance_exists(baddieID) && baddieID.state != 119 && baddieID.object_index != obj_tank && !baddieID.invincible)
    {
        if (other.playerid == 3)
            baddieID.grabbedby = 1;
        
        if (other.playerid == 4)
            baddieID.grabbedby = 2;
        
        instance_destroy();
        instance_destroy(baddieID);
    }
}
