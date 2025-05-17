if (state == 54 || state == 16)
{
    state = 0;
	baddiegrabbedID = 0
}

if (state == 72)
	state = 69
if (global.coop == 0)
{
    if (targetDoor == "A" && instance_exists(obj_doorA))
    {
        if (hallway == 1)
            x = obj_doorA.x + (hallwaydirection * 100);
        else if (box == 1)
            x = obj_doorA.x + 32;
        else
            x = obj_doorA.x + 16;
        
        y = obj_doorA.y - 14;
    }
    
    if (targetDoor == "B" && instance_exists(obj_doorB))
    {
        if (hallway == 1)
            x = obj_doorB.x + (hallwaydirection * 100);
        else if (box == 1)
            x = obj_doorB.x + 32;
        else
            x = obj_doorB.x + 16;
        
        y = obj_doorB.y - 14;
    }
    
    if (targetDoor == "C" && instance_exists(obj_doorC))
    {
        if (hallway == 1)
            x = obj_doorC.x + (hallwaydirection * 100);
        else if (box == 1)
            x = obj_doorC.x + 32;
        else
            x = obj_doorC.x + 16;
        
        y = obj_doorC.y - 14;
    }
    
    if (targetDoor == "D" && instance_exists(obj_doorD))
    {
        if (hallway == 1)
            x = obj_doorD.x + (hallwaydirection * 100);
        else if (box == 1)
            x = obj_doorD.x + 32;
        else
            x = obj_doorD.x + 16;
        
        y = obj_doorD.y - 14;
    }
    
    if (targetDoor == "E" && instance_exists(obj_doorE))
    {
        if (hallway == 1)
            x = obj_doorE.x + (hallwaydirection * 100);
        else if (box == 1)
            x = obj_doorE.x + 32;
        else
            x = obj_doorE.x + 16;
        
        y = obj_doorE.y - 14;
    }
    
    if (targetDoor == "CH" && instance_exists(obj_checkpoint))
    {
        if (hallway == 1)
            x = obj_checkpoint.x + (hallwaydirection * 100);
        else if (box == 1)
            x = obj_checkpoint.x + 32;
        else
            x = obj_checkpoint.x;
        
        y = obj_checkpoint.y - 50;
    }
	if (targetDoor == "SECRET")
	{
		state = 120
		if secreteye
		{
			x = obj_secreteyeexit.x
			y = obj_secreteyeexit.y
		}
		else if secreteye2
		{
			x = secretxsave
			y = secretysave
		}
		if !instance_exists(obj_secreteyeexit)
			instance_create(x, y, obj_secreteyeexit)
		if global.panicpause = 0
			global.panicpause = 1
		else
			global.panicpause = 0
		scr_soundeffect(sfx_secreteyeexit)
		vsp = 0
	}
}

secreteye2 = 0
secreteye = 0
hallway = 0;
box = 0;

if (global.shroomfollow == 1)
    instance_create(x, y, obj_pizzakinshroom);

if (global.cheesefollow == 1)
    instance_create(x, y, obj_pizzakincheese);

if (global.tomatofollow == 1)
    instance_create(x, y, obj_pizzakintomato);

if (global.sausagefollow == 1)
    instance_create(x, y, obj_pizzakinsausage);

if (global.pineapplefollow == 1)
    instance_create(x, y, obj_pizzakinpineapple);

roomstartx = x;
roomstarty = y;
