function gml_type_check_init()
{
	var l_r;
	
	l_r = ds_map_create();
	ds_map_set(l_r, "any", global.f_gml_type_check_any);
	ds_map_set(l_r, "bool", global.f_gml_type_check_number);
	ds_map_set(l_r, "number", global.f_gml_type_check_number);
	ds_map_set(l_r, "?number", global.f_gml_type_check_z_number);
	ds_map_set(l_r, "float", global.f_gml_type_check_number);
	ds_map_set(l_r, "?float", global.f_gml_type_check_z_number);
	ds_map_set(l_r, "real", global.f_gml_type_check_number);
	ds_map_set(l_r, "?real", global.f_gml_type_check_z_number);
	ds_map_set(l_r, "color", global.f_gml_type_check_number);
	ds_map_set(l_r, "date", global.f_gml_type_check_number);
	ds_map_set(l_r, "int", global.f_gml_type_check_int);
	ds_map_set(l_r, "index", global.f_gml_type_check_index);
	ds_map_set(l_r, "id", global.f_gml_type_check_index);
	ds_map_set(l_r, "sprite", global.f_gml_type_check_index);
	ds_map_set(l_r, "background", global.f_gml_type_check_index);
	ds_map_set(l_r, "sound", global.f_gml_type_check_index);
	ds_map_set(l_r, "font", global.f_gml_type_check_index);
	ds_map_set(l_r, "script", global.f_gml_type_check_index);
	ds_map_set(l_r, "shader", global.f_gml_type_check_index);
	ds_map_set(l_r, "timeline", global.f_gml_type_check_index);
	ds_map_set(l_r, "object", global.f_gml_type_check_index);
	ds_map_set(l_r, "room", global.f_gml_type_check_index);
	ds_map_set(l_r, "buffer", global.f_gml_type_check_index);
	ds_map_set(l_r, "list", global.f_gml_type_check_index);
	ds_map_set(l_r, "grid", global.f_gml_type_check_index);
	ds_map_set(l_r, "string", global.f_gml_type_check_string);
	ds_map_set(l_r, "?string", global.f_gml_type_check_z_string);
	ds_map_set(l_r, "array", global.f_gml_type_check_array);
	ds_map_set(l_r, "?array", global.f_gml_type_check_z_array);
	ds_map_set(l_r, "sprite", global.f_gml_type_check_index);
	ds_map_set(l_r, "background", global.f_gml_type_check_index);
	ds_map_set(l_r, "sound", global.f_gml_type_check_index);
	ds_map_set(l_r, "font", global.f_gml_type_check_index);
	ds_map_set(l_r, "path", global.f_gml_type_check_index);
	ds_map_set(l_r, "timeline", global.f_gml_type_check_index);
	ds_map_set(l_r, "script", global.f_gml_type_check_index);
	ds_map_set(l_r, "object", global.f_gml_type_check_index);
	ds_map_set(l_r, "room", global.f_gml_type_check_index);
	return l_r;
}
