function gml_script_seek()
{
	var this, l__scr;
	
	this = argument[0];
	l__scr = global.g_gml_program_seek_script;
	global.g_gml_program_seek_script = this;
	script_execute(argument[1], this[4], argument[2]);
	global.g_gml_program_seek_script = l__scr;
}
