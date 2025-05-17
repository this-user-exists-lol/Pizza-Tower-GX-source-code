function create_afterimage(x_pos, y_pos, spriteindex, imageindex) //gml_Script_create_afterimage
{
    var q = 
    {
        x: x_pos,
        y: y_pos,
        sprite_index: spriteindex,
        image_index: imageindex,
        image_angle: 0,
        alarm: [15, 6, -1],
        image_blend: c_white,
        image_xscale: 1,
        image_yscale: 1,
        identifier: (0 << 0),
        visible: true,
        alpha: 1
    }

    ds_list_add(global.afterimage_list, q)
    return q;
}