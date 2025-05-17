if (!ds_list_empty(global.collect_list))
{
    for (var i = 0; i < ds_list_size(global.collect_list); i++)
    {
        var b = ds_list_find_value(global.collect_list, i)
        if is_struct(b)
        {
            with (b)
            {
                var _dir = point_direction(x, y, 110, 80)
				hsp2 += 1
				vsp2 += 1
                hsp = lengthdir_x(hsp2, _dir)
                vsp = lengthdir_y(vsp2, _dir)
                x += hsp
                y += vsp
                image_index += 0.35
                if (image_index > (image_number - 1))
                    image_index = frac(image_index)
                var outofx = x < 135
                var outofy = y < 86
                if (outofx && outofy)
                {
					with obj_hud
					{
						fontthing = 10
						shake = 7
					}
                    ds_list_delete(global.collect_list, i)
                    i--
                    b = undefined
                }
            }
        }
    }
}
