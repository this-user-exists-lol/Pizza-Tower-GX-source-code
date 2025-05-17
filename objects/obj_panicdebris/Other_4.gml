var lay_id, back_id, lay_id2, back_id2, lay_id3, back_id3;

lay_id = layer_get_id("Backgrounds_1");
back_id = layer_background_get_id(lay_id);
lay_id2 = layer_get_id("Backgrounds_2");
back_id2 = layer_background_get_id(lay_id2);
lay_id3 = layer_get_id("Backgrounds_3");
back_id3 = layer_background_get_id(lay_id3);

if (global.panic == 1 && layer_background_get_sprite(back_id) == 1421)
    layer_background_sprite(back_id, 1420);

if (global.panic == 1 && layer_background_get_sprite(back_id) == 1418)
    layer_background_sprite(back_id, 1419);

if (global.panic == 1 && layer_background_get_sprite(back_id3) == 1423)
    layer_background_sprite(back_id3, 1424);

if (global.panic == 1 && layer_background_get_sprite(back_id) == 1388)
    layer_background_sprite(back_id, 1389);

if (global.panic == 1 && layer_background_get_sprite(back_id) == 1391)
    layer_background_sprite(back_id, 1392);

if (global.panic == 1 && layer_background_get_sprite(back_id2) == 1393)
    layer_background_sprite(back_id2, 1394);

if (global.panic == 1 && layer_background_get_sprite(back_id) == 1459)
    layer_background_sprite(back_id, 1460);

if (global.panic == 1 && layer_background_get_sprite(back_id2) == 1457)
    layer_background_sprite(back_id2, 1458);

if (global.panic == 1 && layer_background_get_sprite(back_id3) == 1455)
    layer_background_sprite(back_id3, 1456);
