if (global.stoptime == 0 || global.panicpause == 0)
{
	if (global.panic == 1 || global.snickchallenge == 1)
	{
		global.seconds -= 1;
    
	    if (global.collect >= 5)
		{
			instance_create(obj_player1.x, obj_player1.y, obj_pizzaloss)
			obj_hud.fontthing += 5
			obj_hud.shake = 10
			obj_hud.red = 10
	        global.collect -= 5;
		}
    
    
	    if (global.seconds < 0)
	    {
	        global.seconds = 59;
	        global.minutes -= 1;
	    }
	}
}

if (global.timedgate == 1 || global.miniboss == 1)
{
    global.seconds -= 1;
    
    if (global.seconds < 0)
    {
        global.seconds = 59;
        global.minutes -= 1;
    }
}

alarm[1] = 60;
