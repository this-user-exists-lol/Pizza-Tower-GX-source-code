with (other.id)
{
    if (character == "V")
    {
        scr_hurtplayer(object_index);
    }
    else if (scr_transformationcheck())
    {
        if (state != 10 && state != 118 && hurted == 0)
        {
            hsp = 0;
            movespeed = 0;
            state = 10;
            hurted = 1;
            image_index = 0;
            sprite_index = spr_player_firemouthintro;
            state = 10;
            bombpeptimer = 3;
            instance_destroy(other.id);
        }
    }
}
