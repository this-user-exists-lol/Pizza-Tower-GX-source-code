if (character == "V")
{
    scr_hurtplayer(object_index);
}
else if (scr_transformationcheck())
{
    if (hurted == 0 && cutscene == 0 && (state != 34 && sprite_index != spr_bombpep_end) && state != 71 && state != 73)
    {
        scr_losepoints();
        image_index = 0;
        hurted = 1;
        vsp = -4;
        sprite_index = spr_bombpepend;
        state = 34;
        bombpeptimer = 0;
    }
}
