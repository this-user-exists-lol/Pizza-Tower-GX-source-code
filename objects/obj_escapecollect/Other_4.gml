if (room == rm_editor)
    exit;

if (global.timeattack == 1)
    instance_destroy();

if (ds_list_find_index(global.escapecollectiblelist, id) != -1)
    instance_destroy();

if (global.snickchallenge == 1)
    instance_destroy();
