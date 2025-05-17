var target, coopdistance;

p2pdistancex = 0;

if (floor(image_index) == 10)
    shoving = 0;

if (room == strongcold_endscreen || room == rank_room || room == timesuproom || room == Realtitlescreen || room == characterselect)
    visible = false;
else
    visible = true;

if (global.combo >= 10)
{
    global.SAGEcombo10 = 1;
    ini_open("saveData.ini");
    ini_write_string("SAGE2019", "combo10", 1);
    ini_close();
}
if (shoving == 0)
    bang = 0;

if (room == timesuproom)
    timestop = 1;

if (global.seconds <= 0 && global.minutes <= 0 && ded == 0)
{
    alarm[1] = -1;
    alarm[2] = 3;
    ded = 1;
}

if (global.seconds < 0)
{
    global.seconds = 59;
    global.minutes -= 1;
}

if (global.seconds > 59)
{
    global.minutes += 1;
    global.seconds -= 59;
}

if ((global.panic == 1 && global.minutes < 1) || player.sprite_index == spr_player_timesup)
{
    shake_mag = 2;
    shake_mag_acc = 3 / room_speed;
}
else if (global.panic == 1 && basement == 0)
{
    shake_mag = 2;
    shake_mag_acc = 3 / room_speed;
}

if (shake_mag > 0)
{
    shake_mag -= shake_mag_acc;
    
    if (shake_mag < 0)
        shake_mag = 0;
}

if (instance_exists(player) && player.state != 44 && player.state != 63)
{
    target = player;
    
    if (player.state == 92 || player.state == 21 || player.state == 45)
    {
        if (chargecamera > (player.xscale * 100))
            chargecamera -= 2;
        
        if (chargecamera < (player.xscale * 100))
            chargecamera += 2;
        
        __view_set(e__VW.XView, 0, (target.x - (__view_get(e__VW.WView, 0) / 2)) + chargecamera + p2pdistancex);
    }
    else
    {
        if (chargecamera > 0)
            chargecamera -= 2;
        
        if (chargecamera < 0)
            chargecamera += 2;
        
        __view_set(e__VW.XView, 0, (target.x - (__view_get(e__VW.WView, 0) / 2)) + chargecamera + p2pdistancex);
    }
    
    __view_set(e__VW.XView, 0, clamp(__view_get(e__VW.XView, 0), 0, room_width - __view_get(e__VW.WView, 0)));
    __view_set(e__VW.YView, 0, target.y - (__view_get(e__VW.HView, 0) / 2));
    __view_set(e__VW.YView, 0, clamp(__view_get(e__VW.YView, 0), 0, room_height - __view_get(e__VW.HView, 0)));
    
    if (shake_mag != 0)
    {
        __view_set(e__VW.XView, 0, (target.x - (__view_get(e__VW.WView, 0) / 2)) + chargecamera + p2pdistancex);
        __view_set(e__VW.XView, 0, clamp(__view_get(e__VW.XView, 0), 0, room_width - __view_get(e__VW.WView, 0)));
        __view_set(e__VW.YView, 0, (target.y - (__view_get(e__VW.HView, 0) / 2)) + irandom_range(-shake_mag, shake_mag));
        __view_set(e__VW.YView, 0, clamp(__view_get(e__VW.YView, 0), 0 + irandom_range(-shake_mag, shake_mag), (room_height - __view_get(e__VW.HView, 0)) + irandom_range(-shake_mag, shake_mag)));
    }
}
