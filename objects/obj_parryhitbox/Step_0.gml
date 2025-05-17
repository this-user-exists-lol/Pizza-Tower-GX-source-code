var my_player;

my_player = obj_player.id;
if (my_player.state != 59 && my_player.state != 118)
    instance_destroy();

image_xscale = my_player.xscale;
