for (var i = 0; i < ds_list_size(global.afterimage_list); i++)
{
    var b = ds_list_find_value(global.afterimage_list, i)
    with (b)
    {
	    var p = 4
	    var m = obj_player1.movespeed - p
	    var t = 12 - p
	    alpha = m / t
	    alpha = clamp(alpha, 0, 1)
	    visible = obj_player1.visible
	}
}