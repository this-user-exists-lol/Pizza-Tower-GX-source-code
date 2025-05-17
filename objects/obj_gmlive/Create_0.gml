var first;

if (instance_number(obj_gmlive) > 1)
{
    first = instance_find(obj_gmlive, 0);
    
    if (id != first)
    {
        instance_destroy();
        exit;
    }
}

if (!variable_global_exists("g_live_log_script"))
    live_preinit();

live_init(1, "http://localhost:5100", "");
global.g_live_blank_object = 440;
global.g_live_blank_room = 357;
