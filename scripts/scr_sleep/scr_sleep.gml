function scr_sleep()
{
	var time, ms;
	
	time = current_time;
	ms = argument0;
	
	do
	{
	}
	until ((current_time - time) >= round(ms));
	
	return current_time - time;
}
