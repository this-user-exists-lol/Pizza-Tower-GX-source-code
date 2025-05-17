if (room == rm_editor)
    exit;

with (obj_player)
{
    if (place_meeting(x, y, other.id))
    {
        if (state != 34 && state != 13 && state != 31 && state != 17 && state != 22 && state != 19 && state != 32 && state != 25 && state != 81)
        {
            instance_destroy(other.id);
            global.key_inv = 1;
            key_particles = 1;
            alarm[7] = 30;
            scr_soundeffect(sfx_collecttoppin);
            obj_player.state = 64;
            obj_player.image_index = 0;
        }
    }
}
