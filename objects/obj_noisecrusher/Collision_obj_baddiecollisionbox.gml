if (instance_exists(other.baddieID))
{
    with (other.id)
    {
        if (((baddieID.state == 109 && baddieID.hsp != 0 && baddieID.thrown == 1) && other.state != 109) || (baddieID.state == 119 && obj_player.state == 51))
        {
            other.state = 109;
            instance_create(other.x, other.y, obj_slapstar);
            instance_create(other.x, other.y, obj_baddiegibs);
            other.flash = 1;
            global.hit += 1;
            scr_sound(sound_tackleenemy);
            instance_create(x, y, obj_bumpeffect);
            other.stunned = 200;
            other.vsp = -5;
            other.hsp = -other.image_xscale * 3;
        }
    }
}
