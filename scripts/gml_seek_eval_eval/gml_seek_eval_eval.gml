function gml_seek_eval_eval()
{
	var l_r;
	
	global.g_gml_seek_eval_eval_rec = 0;
	l_r = gml_seek_eval_proc(argument[0], undefined);
	global.g_gml_seek_eval_eval_thread = undefined;
	return l_r;
}
