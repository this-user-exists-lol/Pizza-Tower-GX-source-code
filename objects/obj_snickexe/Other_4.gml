var lay_id, back_id;

x = room_width / 2;
y = -10;
hitboxcreate = 0;
lay_id = layer_background_get_id("Backgrounds_1");
back_id = layer_background_get_id(lay_id);

if (layer_background_get_sprite(back_id) != 1612)
    layer_background_sprite(back_id, 1612);
