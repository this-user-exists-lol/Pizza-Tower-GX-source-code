tv_setsprite()
sprite_index = tvsprite
if bigcollecttimer > 0
	bigcollecttimer--

if (visible == false)
	global.combotimepause = 50

if (room == rank_room || room == timesuproom || room == boss_room1 || room == Realtitlescreen || room == characterselect || room == entrance_treasure)
    visible = false;
else
    visible = true;

if (showtext == 1)
{
    xi = 500 + random_range(1, -1);
    
    if (yi > 500)
        yi -= 5;
}

if (showtext == 0)
{
    xi = 500 + random_range(1, -1);
    
    if (yi < 600)
        yi += 1;
}

if (!(obj_player.state == 31 && obj_player.state == 32 && obj_player.state == 25))
    once = 0;

if (obj_player.y < 200 && obj_player.x > (room_width - 200))
    alpha = 0.5;
else if (!(room == rank_room || room == timesuproom || room == boss_room1 || room == Realtitlescreen || room == characterselect))
    alpha = 1;

if (instance_exists(obj_itspizzatime))
{
    message = "Get to the exit!!";
    alarm[0] = 200;
    showtext = 1;
}
else if (global.collect > global.arank && shownranka == 0 && obj_player.character == "P")
{
    message = "You have enough for an A rank!";
    showtext = 1;
    alarm[0] = 200;
    shownranka = 1;
}
else if (global.collect > global.brank && shownrankb == 0 && obj_player.character == "P")
{
    message = "You have enough for an B rank!";
    showtext = 1;
    alarm[0] = 200;
    shownrankb = 1;
}
else if (global.collect > global.crank && shownrankc == 0 && obj_player.character == "P")
{
    message = "You have enough for an C rank!";
    showtext = 1;
    alarm[0] = 200;
    shownrankc = 1;
}
else if (obj_player.sprite_index == spr_player_levelcomplete)
{
    alarm[0] = 50;
    chose = 1;
    once = 1;
}
else if (obj_player.state == 44 || obj_player.state == 7)
{
    alarm[0] = 50;
}
else if (global.miniboss == 1)
{
    alarm[0] = 50;
}
else if (global.hurtcounter >= global.hurtmilestone && obj_player.character == "P")
{
    alarm[0] = 150;
    
    character = "Peppino";
    message = "You have hurt " + string(character) + " " + string(global.hurtmilestone) + " times...";
    
    global.hurtmilestone += 3;
}
else if (obj_player.state == 52)
{
    showtext = 1;
    message = "SWEET DUDE!!";
    alarm[0] = 50;
    once = 1;
}
else if (global.combo != 0 && global.combotime != 0 && (tvsprite == spr_tvdefault || tvsprite == spr_tvcombo || tvsprite == spr_tvescape))
{
    
    if (global.combo >= 4)
        imageindexstore = 3;
    else
        imageindexstore = global.combo - 1;
}
else if (global.combotime == 0 && tvsprite == spr_tvcombo)
{
    image_index = imageindexstore;
    alarm[0] = 50;
}
else if (room == Realtitlescreen)
{
    alarm[0] = 2;
    
    if (obj_mainmenuselect.selected == 0)
    {
        if (obj_mainmenuselect.optionselected == 0)
        {
            showtext = 1;
            message = "START GAME";
        }
        
        if (obj_mainmenuselect.optionselected == 1)
        {
            showtext = 1;
            message = "OPTION";
        }
        
        if (obj_mainmenuselect.optionselected == 2)
        {
            showtext = 1;
            message = "ERASE DATA";
        }
    }
    else
    {
        showtext = 1;
        message = "";
    }
}

if (obj_player.state == 64)
{
    showtext = 1;
    message = "GOT THE KEY!";
    alarm[0] = 50;
}

if (instance_exists(obj_noise_pushbutton))
{
    if (obj_noise_pushbutton.hsp != 0 && global.panic == 0)
    {
        showtext = 1;
        message = "UH OH...";
        alarm[0] = 50;
    }
}
