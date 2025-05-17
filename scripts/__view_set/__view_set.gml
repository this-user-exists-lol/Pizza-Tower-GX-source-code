function __view_set()
{
	var __prop, __index, __val, __res;
	
	__prop = argument0;
	__index = argument1;
	__val = argument2;
	__view_set_internal(__prop, __index, __val);
	__res = __view_get(__prop, __index);
	return __res;
}
