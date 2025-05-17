var lay_id, back_id;

lay_id = layer_get_id("Background");
back_id = layer_background_get_id(lay_id);

switch (image_index)
{
    case 0:
        name = "bg_tower";
        layer_background_sprite(back_id, 1509);
        break;
    
    case 1:
        name = "bg_entrance3";
        layer_background_sprite(back_id, 1513);
        break;
    
    case 2:
        name = "bg_medieval2";
        layer_background_sprite(back_id, 1467);
        break;
    
    case 3:
        name = "bg_medievalinterior";
        layer_background_sprite(back_id, 1469);
        break;
    
    case 4:
        name = "bg_medievallibrairy1";
        layer_background_sprite(back_id, 1470);
        break;
    
    case 5:
        name = "bg_medievaltreasure1";
        layer_background_sprite(back_id, 1472);
        break;
    
    case 6:
        name = "bg_medievaltreasure2";
        layer_background_sprite(back_id, 1473);
        break;
    
    case 7:
        name = "bg_secret";
        layer_background_sprite(back_id, 1487);
        break;
}
