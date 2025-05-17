image_speed = 0.35;

if (obj_player.key_jump && selected == 0 && obj_peppinoselect.sprite_index != spr_peppinoselected)
{
    ready = 1;
    scr_soundeffect(sfx_collecttoppin);
    obj_peppinoselect.sprite_index = spr_peppinoselected;
    obj_peppinoselect.image_index = 0;
    character = "P";
    scr_characterspr();
    alarm[0] = 100;
}

if (obj_player.key_jump && selected == 1 && obj_noiseselect.sprite_index != spr_noiseselected)
{
    ready = 1;
    scr_soundeffect(sfx_collecttoppin);
    obj_noiseselect.sprite_index = spr_noiseselected;
    obj_noiseselect.image_index = 0;
    character = "N";
    scr_characterspr();
    alarm[0] = 100;
}
