targetDoor = "A";

if (place_meeting(x, y, obj_player) && drawing == 0)
{
    ini_open("saveData.ini");
    drawing = 1;
}

if (!place_meeting(x, y, obj_player) && drawing == 1)
{
    ini_close();
    drawing = 0;
}

if (place_meeting(x, y, obj_player))
{
    image_speed = 0.35;
}
else
{
    image_speed = 0;
    image_index = 0;
}

if (distance_to_object(obj_player) < 50)
{
    switch (level)
    {
        case "medieval":
            with (obj_hud)
            {
                message = "PIZZASCAPE";
                showtext = 1;
                alarm[0] = 2;
            }
            
            break;
        
        case "chateau":
            with (obj_hud)
            {
                message = "PIZZASCARE";
                showtext = 1;
                alarm[0] = 2;
            }
            
            break;
        
        case "ruin":
            with (obj_hud)
            {
                message = "THE ANCIENT CHEESE";
                showtext = 1;
                alarm[0] = 2;
            }
            
            break;
        
        case "dungeon":
            with (obj_hud)
            {
                message = "BLOODSAUCE DUNGEON";
                showtext = 1;
                alarm[0] = 2;
            }
            
            break;
        
        case "floorroom":
            with (obj_hud)
            {
                message = "OREGANO DESERT";
                showtext = 1;
                alarm[0] = 2;
            }
            
            break;
        
        case "graveyard":
            with (obj_hud)
            {
                message = "THE WASTEYARD";
                showtext = 1;
                alarm[0] = 2;
            }
            
            break;
        
        case "farm":
            with (obj_hud)
            {
                message = "FUN FARM";
                showtext = 1;
                alarm[0] = 2;
            }
            
            break;
        
        case "ufo":
            with (obj_hud)
            {
                message = "SPACE PINBALL";
                showtext = 1;
                alarm[0] = 2;
            }
            
            break;
        
        case "entrance":
            with (obj_hud)
            {
                message = "ENTRANCE";
                showtext = 1;
                alarm[0] = 2;
            }
            
            break;
        
        case "strongcold":
            with (obj_hud)
            {
                message = "STRONGCOLD";
                showtext = 1;
                alarm[0] = 2;
            }
            
            break;
        
        case "forest":
            with (obj_hud)
            {
                message = "GNOME FOREST";
                showtext = 1;
                alarm[0] = 2;
            }
            
            break;
        
        case "beach":
            with (obj_hud)
            {
                message = "PINEAPPLE BEACH";
                showtext = 1;
                alarm[0] = 2;
            }
            
            break;
        
        case "dragonlair":
            with (obj_hud)
            {
                message = "DRAGON LAIR";
                showtext = 1;
                alarm[0] = 2;
            }
            
            break;
        
        case "snickchallenge":
            with (obj_hud)
            {
                message = "SNICK CHALLENGE";
                showtext = 1;
                alarm[0] = 2;
            }
            
            break;
    }
}
