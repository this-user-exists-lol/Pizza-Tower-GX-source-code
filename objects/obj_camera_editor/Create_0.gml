with (obj_camera)
    instance_destroy();

with (obj_hud)
    instance_destroy();

with (obj_pause)
    instance_destroy();

boundless = 1;
global.optimize = 0;
view_w = camera_get_view_width(view_camera[0]);
view_h = camera_get_view_height(view_camera[0]);
mouse_xprevious = -1;
mouse_yprevious = -1;
spd = 10;
zoom = 1;
