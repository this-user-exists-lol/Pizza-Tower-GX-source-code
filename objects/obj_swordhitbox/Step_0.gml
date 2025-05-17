image_xscale = playerid.xscale;
x = playerid.x;
y = playerid.y;

if (playerid.state != 32 && playerid.state != 6 && playerid.state != 118)
    instance_destroy();
