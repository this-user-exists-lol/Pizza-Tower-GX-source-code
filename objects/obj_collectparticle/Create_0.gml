if (instance_number(self) > 1)
{
	instance_destroy()
	return;
}

depth = -99
global.collect_list = ds_list_create()


