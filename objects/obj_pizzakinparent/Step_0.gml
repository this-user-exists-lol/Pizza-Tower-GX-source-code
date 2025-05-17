if (room == rm_editor)
    return;
if (room == rank_room || room == timesuproom)
    visible = false
else
    visible = playerid.visible
if (obj_player.state == (61 << 0))
    visible = false
playerid = obj_player1
var roomname = string_letters(room_get_name(room))
if (roomname == "strongcoldminiboss")
    roomname = "strongcold"
prevx = x
switch roomname
{
    default:
        if (sprite_index == toppinintrospr && floor(image_index) == (image_number - 1))
            sprite_index = toppinidlespr
        if ((global.shroomfollow || global.cheesefollow || global.tomatofollow || global.sausagefollow || global.pineapplefollow || global.gotgerome) && (sprite_index != toppinintrospr))
        {
			switch object_index
			{
				case obj_pizzakinshroom:
				{
					followid = obj_player1
					global.shroomfollow = 1
				}
				break
				case obj_pizzakincheese:
				{
		            if instance_exists(obj_pizzakinshroom)
		                followid = obj_pizzakinshroom;
		            else
		                followid = obj_player1
					global.cheesefollow = 1
				}
				break
				case obj_pizzakintomato:
				{
		            if instance_exists(obj_pizzakincheese)
		                followid = obj_pizzakincheese;
		            else if instance_exists(obj_pizzakinshroom)
		                followid = obj_pizzakinshroom;
		            else
		                followid = obj_player1
					global.tomatofollow = 1
				}
				break
				case obj_pizzakinsausage:
				{
		            if instance_exists(obj_pizzakintomato)
		                followid = obj_pizzakintomato;
		            else if instance_exists(obj_pizzakincheese)
		                followid = obj_pizzakincheese;
		            else if instance_exists(obj_pizzakinshroom)
		                followid = obj_pizzakinshroom;
		            else
		                followid = obj_player1
					global.sausagefollow = 1
				}
				break
				case obj_pizzakinpineapple:
				{
		            if instance_exists(obj_pizzakinsausage)
			            followid = obj_pizzakinsausage;
		            else if instance_exists(obj_pizzakintomato)
		                followid = obj_pizzakintomato;
		            else if instance_exists(obj_pizzakincheese)
		                followid = obj_pizzakincheese;
		            else if instance_exists(obj_pizzakinshroom)
		                followid = obj_pizzakinshroom;
		            else
		                followid = obj_player1
					global.pineapplefollow = 1
				}
				break
				case obj_gerome:
				{
		            if instance_exists(obj_pizzakinpineapple)
			            followid = obj_pizzakinpineapple;
		            else if instance_exists(obj_pizzakinsausage)
			            followid = obj_pizzakinsausage;
		            else if instance_exists(obj_pizzakintomato)
		                followid = obj_pizzakintomato;
		            else if instance_exists(obj_pizzakincheese)
		                followid = obj_pizzakincheese;
		            else if instance_exists(obj_pizzakinshroom)
		                followid = obj_pizzakinshroom;
		            else
		                followid = obj_player1
					global.gotgerome = 1
				}
				break
			}
            image_alpha = playerid.image_alpha
			if followid = obj_player1
				image_xscale = obj_player1.xscale
			else
				image_xscale = followid.image_xscale
			var idlespr = (global.panic? toppinpanicspr : toppinidlespr)
            sprite_index = (x != prevx? toppinwalkspr : idlespr)
            depth = -6
			if (playerid.grounded == 1)
			{
			    if (space < 20 && dir == -1)
			        space++;
    
			    if (space > -20 && dir == 1)
			        space--;
			}
			else if (space > 0)
			    space--;
			else if (space < 0)
			    space++;
            ds_queue_enqueue(followQueue, followid.x + space)
            ds_queue_enqueue(followQueue, followid.y)
            LAG_STEPS = 10
            if (ds_queue_size(followQueue) > (LAG_STEPS * 2))
            {
                var x2 = (ds_queue_dequeue(followQueue) - (image_xscale * 10))
                var y2 = (ds_queue_dequeue(followQueue))
		        if (interp < 1)
		        {
		            x = lerp(x, x2, interp)
		            y = lerp(y, y2, interp)
		            interp = Approach(interp, 1, 0.01)
		        }
		        else
		        {
		            x = x2
		            y = y2
		        }
            }
			if (dir != playerid.xscale)
				dir = playerid.xscale;
        }
        break
}

if (global.playerhealth == 1 && global.pineapplefollow == 1)
    sprite_index = spr_toppinpineapple_panic
