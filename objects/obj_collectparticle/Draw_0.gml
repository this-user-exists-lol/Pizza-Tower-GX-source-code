if (!ds_list_empty(global.collect_list))
{
    for (var i = 0; i < ds_list_size(global.collect_list); i++)
    {
        var b = ds_list_find_value(global.collect_list, i)
        if is_struct(b)
        {
            var cx = camera_get_view_x(view_camera[0])
            var cy = camera_get_view_y(view_camera[0])
            draw_sprite_ext(b.sprite_index, b.image_index, (b.x + cx), (b.y + cy), 1, 1, 0, c_white, 1)
        }
    }
}