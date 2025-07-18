image_speed = 0;
obj_player.visible = true;
obj_camera.visible = true;
obj_player.state = 69;

if (instance_exists(obj_pizzakinshroom))
    obj_pizzakinshroom.visible = true;

if (instance_exists(obj_pizzakincheese))
    obj_pizzakincheese.visible = true;

if (instance_exists(obj_pizzakintomato))
    obj_pizzakintomato.visible = true;

if (instance_exists(obj_pizzakinsausage))
    obj_pizzakinsausage.visible = true;

if (instance_exists(obj_pizzakinpineapple))
    obj_pizzakinpineapple.visible = true;

if (global.progress == "entrance")
    obj_player.targetRoom = medieval_1;

if (global.progress == "medieval")
    obj_player.targetRoom = ruin_1;

if (global.progress == "ruin")
    obj_player.targetRoom = dungeon_1;

if (global.progress == "dungeon")
    obj_player.targetRoom = hub_room1;

if (!instance_exists(obj_fadeout))
    instance_create(x, y, obj_fadeout);
