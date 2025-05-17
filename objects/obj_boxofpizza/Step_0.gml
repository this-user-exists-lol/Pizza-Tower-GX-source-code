with (obj_player1)
{
    if (other.image_yscale == 1)
    {
        if (((key_down && !place_meeting(x, y + 1, obj_destructibles) && place_meeting(x, y + 1, other.id) && ((state == 74 || character == "S") || state == 45)) || ((state == 76 || state == 82 || state == 85) && !place_meeting(x, y + 1, obj_destructibles) && place_meeting(x, y + 1, other.id))) && !instance_exists(obj_fadeout) && state != 86 && state != 69 && ((obj_player1.spotlight == 1 && object_index == obj_player1)))
        {
            other.depth = -10;
            scr_soundeffect(sfx_box);
            obj_player1.box = 1;
            mach2 = 0;
            obj_camera.chargecamera = 0;
            x = other.x;
			obj_player1.box = 1;
			obj_player1.lastroom = room;
            obj_player1.targetDoor = other.targetDoor;
            obj_player1.targetRoom = other.targetRoom;
			obj_player1.xscalestretch = 0
			obj_player1.yscalestretch = 0
            sprite_index = spr_downpizzabox;
            image_index = 0;
            state = 86;
        }
    }
    
    if (other.image_yscale == -1)
    {
        if (((key_up && !place_meeting(x, y - 1, obj_destructibles) && place_meeting(x, y - 10, other.id) && (state == 0 || state == 38 || state == 66 || state == 77 || state == 78 || state == 92 || state == 73)) || ((state == 71 || state == 94) && !place_meeting(x, y - 1, obj_destructibles) && place_meeting(x, y - 1, other.id))) && !instance_exists(obj_fadeout) && state != 86 && state != 69 && ((obj_player1.spotlight == 1 && object_index == obj_player1)))
        {
            scr_soundeffect(sfx_box);
            other.depth = -10;
            other.depth = -8;
            mach2 = 0;
            obj_camera.chargecamera = 0;
            x = other.x;
            y = other.y + 24;
			obj_player1.box = 1;
			obj_player1.xscalestretch = 0
			obj_player1.yscalestretch = 0
            obj_player1.targetDoor = other.targetDoor;
            obj_player1.targetRoom = other.targetRoom;
            sprite_index = spr_uppizzabox;
            image_index = 0;
            state = 86;
        }
    }
}

if (place_meeting(x, y + 1, obj_doorA) || place_meeting(x, y - 1, obj_doorA))
    targetDoor = "A";

if (place_meeting(x, y + 1, obj_doorB) || place_meeting(x, y - 1, obj_doorB))
    targetDoor = "B";

if (place_meeting(x, y + 1, obj_doorC) || place_meeting(x, y - 1, obj_doorC))
    targetDoor = "C";

if (place_meeting(x, y + 1, obj_doorD) || place_meeting(x, y - 1, obj_doorD))
    targetDoor = "D";

if (place_meeting(x, y + 1, obj_doorE) || place_meeting(x, y - 1, obj_doorE))
    targetDoor = "E";
