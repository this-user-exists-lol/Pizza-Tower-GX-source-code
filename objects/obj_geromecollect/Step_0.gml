if (global.gotgerome)
{
	visible = false
	if addtime > 0
	{
		addtime -= round(timeminus)
		if addtime < 0
			addtime = 0
		global.stoptime = 1
		global.seconds += timeminus
	}
	else
	{
		global.stoptime = 0
		addtime = 0
		donecount = 1
		instance_destroy()
	}
}