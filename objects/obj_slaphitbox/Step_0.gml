image_xscale = playerid.xscale;
x = playerid.x;
y = playerid.y;

if ((playerid.image_index > 3 || playerid.state != 18) && playerid.state != 29 && playerid.state != 15)
    instance_destroy();
