var lay_id, map_id, data;

if (ds_list_find_index(global.saveroom, id) == -1)
{
    instance_create(x + 16, y, obj_debris);
    instance_create(x + 16, y, obj_debris);
    instance_create(x + 16, y, obj_debris);
    instance_create(x + 16, y, obj_debris);
    
    if (audio_is_playing(sfx_breakblock1) || audio_is_playing(sfx_breakblock2))
    {
        audio_stop_sound(sfx_breakblock1);
        audio_stop_sound(sfx_breakblock2);
    }
    
    scr_soundeffect(sfx_breakblock1, sfx_breakblock2);
    ds_list_add(global.saveroom, id);
    lay_id = layer_get_id("Tiles_1");
    map_id = layer_tilemap_get_id(lay_id);
    data = tilemap_get_at_pixel(map_id, x, y);
    data = tile_set_empty(data);
    tilemap_set_at_pixel(map_id, data, x, y);
    lay_id = layer_get_id("Tiles_2");
    map_id = layer_tilemap_get_id(lay_id);
    data = tilemap_get_at_pixel(map_id, x, y);
    data = tile_set_empty(data);
    tilemap_set_at_pixel(map_id, data, x, y);
}
