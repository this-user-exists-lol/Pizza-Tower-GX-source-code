var old_checkroom, old_checkDoor, old_points, old_pointsN, old_pizzadelivery, old_pizzasdelivered, old_failcutscene, old_hp, old_shroomfollow, old_cheesefollow, old_tomatofollow, old_sausagefollow, old_pineaplefollow, old_gnomecheck0, old_gnomecheck1, old_gnomecheck2, old_gnomecheck3, old_gnomecheck4, old_key_inv, older_baddieroom, older_saveroom;

if (room == rm_editor)
{
    visible = false;
    exit;
}

if (room == custom_lvl_room)
{
    if (place_meeting(x, y, par_camera_editor))
    {
        cam = instance_place(x, y, par_camera_editor);
        cam_width = instance_place(x, y, par_camera_editor).width;
        cam_height = instance_place(x, y, par_camera_editor).height;
        
        with (obj_camera)
            bound_camera = 1;
    }
    else
    {
        cam = -4;
        cam_width = 0;
        cam_height = 0;
        instance_activate_all();
        
        with (obj_camera)
            bound_camera = 0;
    }
}

scr_getinput();

switch (state)
{
    case 0:
        scr_player_normal();
        break;
    
    case 1:
        scr_player_revolver();
        break;
    
    case 2:
        scr_player_dynamite();
        break;
    
    case 3:
        scr_player_boots();
        break;
    case 6:
        scr_player_finishingblow();
        break;
    
    case 5:
        scr_player_tumble();
        break;
    
    case 14:
        scr_player_titlescreen();
        break;
    
    case 7:
        scr_player_ejected();
        break;
    
    case 10:
        scr_player_firemouth();
        break;
    
    case 9:
        scr_player_fireass();
        break;
    
    case 8:
        scr_player_transitioncutscene();
        break;
    
    case 15:
        scr_playerN_hookshot();
        break;
    
    case 18:
        scr_player_slap();
        break;
    
    case 16:
        scr_player_tacklecharge();
        break;
    
    case 19:
        scr_player_cheesepep();
        break;
    
    case 17:
        scr_player_cheeseball();
        break;
    
    case 20:
        scr_player_cheesepepstick();
        break;
    
    case 22:
        scr_player_boxxedpep();
        break;
    
    case 23:
        scr_player_pistolaim();
        break;
    
    case 24:
        scr_player_climbwall();
        break;
    
    case 25:
        scr_player_knightpepslopes();
        break;
    
    case 26:
        scr_player_portal();
        break;
    
    case 27:
        scr_player_secondjump();
        break;
    
    case 28:
        scr_player_chainsawbump();
        break;
    
    case 29:
        scr_player_handstandjump();
        break;
    
    case 30:
        scr_player_gottreasure();
        break;
    
    case 31:
        scr_player_knightpep();
        break;
    
    case 32:
        scr_player_knightpepattack();
        break;
    
    case 33:
        scr_player_meteorpep();
        break;
    
    case 34:
        scr_player_bombpep();
        break;
    
    case 35:
        scr_player_grabbing();
        break;
    
    case 36:
        scr_player_chainsawpogo();
        break;
    
    case 37:
        scr_player_shotgunjump();
        break;
    
    case 39:
        scr_player_stunned();
        break;
    
    case 40:
        scr_player_highjump();
        break;
    
    case 41:
        scr_player_chainsaw();
        break;
    
    case 42:
        scr_player_facestomp();
        break;
    
    case 44:
        scr_player_timesup();
        break;
    
    case 45:
        scr_player_machroll();
        break;
    
    case 47:
        scr_player_pistol();
        break;
    
    case 46:
        scr_player_shotgun();
        break;
    
    case 48:
        scr_player_machfreefall();
        break;
    
    case 49:
        scr_player_throw();
        break;
    
    case 51:
        scr_player_superslam();
        break;
    
    case 50:
        scr_player_slam();
        break;
    
    case 52:
        scr_player_skateboard();
        break;
    
    case 53:
        scr_player_grind();
        break;
    
    case 54:
        scr_player_grab();
        break;
    
    case 55:
        scr_player_punch();
        break;
    
    case 56:
        scr_player_backkick();
        break;
    
    case 57:
        scr_player_uppunch();
        break;
    
    case 58:
        scr_player_shoulder();
        break;
    
    case 59:
        scr_player_backbreaker();
        break;
    
    case 60:
        scr_player_bossdefeat();
        break;
    
    case 62:
        scr_player_bossintro();
        break;
    
    case 70:
        scr_player_smirk();
        break;
    
    case 61:
        scr_player_pizzathrow();
        break;
    
    case 63:
        scr_player_gameover();
        break;
    
    case 94:
        scr_player_Sjumpland();
        break;
    
    case 93:
        scr_player_freefallprep();
        break;
    
    case 91:
        scr_player_runonball();
        break;
    
    case 89:
        scr_player_boulder();
        break;
    
    case 64:
        scr_player_keyget();
        break;
    
    case 65:
        scr_player_tackle();
        break;
    
    case 68:
        scr_player_slipnslide();
        break;
    
    case 67:
        scr_player_ladder();
        break;
    
    case 66:
        scr_player_jump();
        break;
    
    case 72:
        scr_player_victory();
        break;
    
    case 69:
        scr_player_comingoutdoor();
        break;
    
    case 71:
        scr_player_Sjump();
        break;
    
    case 73:
        scr_player_Sjumpprep();
        break;
    
    case 74:
        scr_player_crouch();
        break;
    
    case 75:
        scr_player_crouchjump();
        break;
    
    case 76:
        scr_player_crouchslide();
        break;
    
    case 77:
        scr_player_mach1();
        break;
    
    case 78:
        scr_player_mach2();
        break;
    
    case 92:
        scr_player_mach3();
        break;
    
    case 79:
        scr_player_machslide();
        break;
    
    case 80:
        scr_player_bump();
        break;
    
    case 81:
        scr_player_hurt();
        break;
    
    case 82:
        scr_player_freefall();
        break;
    
    case 85:
        scr_player_freefallland();
        break;
    
    case 83:
        scr_player_hang();
        break;
    
    case 86:
        scr_player_door();
        break;
    
    case 87:
        scr_player_barrel();
        break;
    
    case 88:
        scr_player_current();
        break;
    
    case 90:
        scr_player_taxi();
        break;
    
    case 38:
        scr_player_pogo();
        break;
    
    case 21:
        scr_player_rideweenie();
        break;
    
    case 95:
        scr_player_faceplant();
        break;
    
    case 13:
        scr_player_ghost();
        break;
    
    case 11:
        scr_player_mort();
        break;
    
    case 12:
        scr_player_hook();
        break;
    
    case 115:
        scr_player_arenaintro();
        break;
    
    case 117:
        scr_player_actor();
        break;
    
    case 118:
        scr_player_parry();
        break;
		
    case 119:
        scr_player_hitstun();
        break;
	
	case 120:
		scr_player_secreteye()
		break
}
if invtime > 0
	invtime--
if (room == Realtitlescreen)
    state = 14;

if (wallclingcooldown < 10)
    wallclingcooldown++;

if (global.combo >= 3 && state != 59)
{
    if (character != "V")
        supercharged = 1;
    else
        anger = 100;
}

if (!instance_exists(superchargedeffectid) && supercharged == 1)
{
    with (instance_create(x, y, obj_superchargeeffect))
    {
        playerid = other.object_index;
        other.superchargedeffectid = id;
    }
}

if (!instance_exists(pizzashieldid) && pizzashield == 1)
{
    with (instance_create(x, y, obj_pizzashield))
    {
        playerid = other.object_index;
        other.pizzashieldid = id;
    }
}

if (visible == false && state == 69)
{
    coopdelay++;
    image_index = 0;
    
    if (coopdelay == 50)
    {
        visible = true;
        coopdelay = 0;
    }
}
if (state != 38 && state != 59)
{
    pogospeed = 6;
    pogospeedprev = 0;
}

scr_playersounds();

if (grounded)
    doublejump = 0;

if (pogochargeactive == 1)
{
    if (flashflicker == 0)
    {
        if (pogochargeactive == 1 && sprite_index == spr_playerN_pogofall)
            sprite_index = spr_playerN_pogofallmach;
        
        if (pogochargeactive == 1 && sprite_index == spr_playerN_pogobounce)
            sprite_index = spr_playerN_pogobouncemach;
    }
    
    flashflicker = 1;
    pogocharge--;
}
else
{
    flashflicker = 0;
}

if (state != 49)
    kickbomb = 0;

if (pogocharge == 0)
{
    pogochargeactive = 0;
    pogocharge = 100;
}

if (flashflicker == 1)
{
    flashflickertime++;
    
    if (flashflickertime == 20)
    {
        flash = 1;
        flashflickertime = 0;
    }
}

if (global.coop == 0)
    fightball = 0;

if (state != 92 && state != 119)
    fightball = 0;

if (state != 119 && state != 81)
    thrown = 0;

if (grounded && state != 29)
    suplexmove = 0;

if (state != 82 && state != 51)
    freefallsmash = 0;

if (global.playerhealth <= 0 && state != 63)
{
    image_index = 0;
    sprite_index = spr_playerV_dead;
    state = 63;
}

if (state == 63 && y > (room_height * 2))
{
    room = global.checkpointroom;
    old_checkroom = global.checkpointroom;
    old_checkDoor = global.checkpointDoor;
    old_points = global.checkpointCollect;
    old_pointsN = global.checkpointCollectN;
    old_pizzadelivery = global.pizzadelivery;
    old_pizzasdelivered = global.checkpoint_pizzasdelivered;
    old_failcutscene = global.failcutscene;
    old_hp = global.checkpoint_hp;
    old_shroomfollow = global.checkpoint_shroomfollow;
    old_cheesefollow = global.checkpoint_cheesefollow;
    old_tomatofollow = global.checkpoint_tomatofollow;
    old_sausagefollow = global.checkpoint_sausagefollow;
    old_pineaplefollow = global.checkpoint_pineapplefollow;
    old_gnomecheck0 = global.checkpoint_gnomecheck0;
    old_gnomecheck1 = global.checkpoint_gnomecheck1;
    old_gnomecheck2 = global.checkpoint_gnomecheck2;
    old_gnomecheck3 = global.checkpoint_gnomecheck3;
    old_gnomecheck4 = global.checkpoint_gnomecheck4;
    old_key_inv = global.checkpoint_key_inv;
    older_baddieroom = ds_list_create();
    older_saveroom = ds_list_create();
    ds_list_copy(older_baddieroom, global.old_baddieroom);
    ds_list_copy(older_saveroom, global.old_saveroom);
    scr_playerreset();
    global.checkpoint_hp = old_hp;
    global.hp = old_hp;
    global.checkpointDoor = old_checkDoor;
    targetDoor = old_checkDoor;
    global.checkpointroom = old_checkroom;
    global.collect = old_points;
    global.collectN = old_pointsN;
    global.checkpointCollect = old_points;
    global.checkpointCollectN = old_pointsN;
    global.pizzadelivery = old_pizzadelivery;
    global.pizzasdelivered = old_pizzasdelivered;
    global.failcutscene = old_failcutscene;
    global.checkpoint_pizzasdelivered = old_pizzasdelivered;
    global.shroomfollow = old_shroomfollow;
    global.cheesefollow = old_cheesefollow;
    global.tomatofollow = old_tomatofollow;
    global.sausagefollow = old_sausagefollow;
    global.pineapplefollow = old_pineaplefollow;
    global.checkpoint_shroomfollow = old_shroomfollow;
    global.checkpoint_cheesefollow = old_cheesefollow;
    global.checkpoint_tomatofollow = old_tomatofollow;
    global.checkpoint_sausagefollow = old_sausagefollow;
    global.checkpoint_pineapplefollow = old_pineaplefollow;
    global.key_inv = old_key_inv;
    global.checkpoint_key_inv = old_key_inv;
    global.checkpoint_gnomecheck0 = old_gnomecheck0;
    global.checkpoint_gnomecheck1 = old_gnomecheck1;
    global.checkpoint_gnomecheck2 = old_gnomecheck2;
    global.checkpoint_gnomecheck3 = old_gnomecheck3;
    global.checkpoint_gnomecheck4 = old_gnomecheck4;
    
    if (instance_exists(obj_gnome_checklist))
    {
        with (obj_gnome_checklist)
        {
            gnome_check[0] = old_gnomecheck0;
            gnome_check[1] = old_gnomecheck1;
            gnome_check[2] = old_gnomecheck2;
            gnome_check[3] = old_gnomecheck3;
            gnome_check[4] = old_gnomecheck4;
        }
    }
    
    if (!ds_list_empty(older_baddieroom))
    {
        ds_list_copy(global.old_baddieroom, older_baddieroom);
        ds_list_destroy(older_baddieroom);
    }
    
    if (!ds_list_empty(older_saveroom))
    {
        ds_list_copy(global.old_saveroom, older_saveroom);
        ds_list_destroy(older_saveroom);
    }
    
    if (!ds_list_empty(global.old_baddieroom))
    {
        ds_list_clear(global.baddieroom);
        ds_list_copy(global.baddieroom, global.old_baddieroom);
    }
    
    if (!ds_list_empty(global.old_saveroom))
    {
        ds_list_clear(global.saveroom);
        ds_list_copy(global.saveroom, global.old_saveroom);
    }
}

if (grinding)
    state = 53;

if (anger == 0)
    angry = 0;

if (anger > 0)
{
    angry = 1;
    anger -= 1;
}

if (sprite_index == spr_winding && state != 0)
    windingAnim = 0;

if (state != 54)
    swingdingbuffer = 0;
if (state != 71)
	sjumpspeed = -15
if (sprite_index == spr_player_idlevomit && image_index > 28 && image_index < 43)
    instance_create(x + random_range(-5, obj_pause), y + 46, obj_vomit);

if (sprite_index == spr_player_idlevomitblood && image_index > 28 && image_index < 43)
{
    with (instance_create(x + random_range(-5, obj_pause), y + 46, obj_vomit))
        sprite_index = spr_vomit2;
}

if (global.playerhealth <= 30 && !instance_exists(obj_sweat) && obj_player.state == 0)
    instance_create(x, y, obj_sweat);

if (angry == 1 && !instance_exists(angryeffectid) && state == 0 && character != "V")
{
    with (instance_create(x, y, obj_angrycloud))
    {
        playerid = other.object_index;
        other.angryeffectid = id;
    }
}
if (key_jump)
    input_buffer_jump = 15
if (input_buffer_jump > 0)
    input_buffer_jump--

if (input_buffer_secondjump < 8)
    input_buffer_secondjump++;

if (input_buffer_highjump < 8)
    input_buffer_highjump++;

if (key_particles == 1)
    instance_create(random_range(x + 25, x - 25), random_range(y + 35, y - 25), obj_keyeffect);

if (inv_frames == 0 && hurted == 0 && state != 13)
    image_alpha = 1;

if (state == 76 || state == 55 || state == 78 || (state == 66 && sprite_index == spr_playerN_noisebombspinjump) || state == 16 || state == 52 || state == 31 || state == 22 || state == 19 || state == 25 || state == 32 || state == 34 || state == 42 || state == 48 || state == 42 || state == 45 || state == 92 || state == 82 || state == 71)
    attacking = 1;
else
    attacking = 0;

if (state == 49 || state == 56 || state == 58 || state == 57)
    grabbing = 1;
else
    grabbing = 0;

if (state == 87 || state == 55 || state == 76 || state == 95 || state == 21 || state == 92 || (state == 66 && sprite_index == spr_playerN_noisebombspinjump) || state == 68 || (state == 81 && thrown == 1) || state == 24 || state == 82 || state == 5 || state == 9 || state == 10 || state == 15 || state == 52 || state == 43 || state == 71 || state == 48 || state == 16 || (state == 51 && sprite_index == spr_piledriver) || state == 31 || state == 32 || state == 25 || state == 22 || state == 19 || state == 17)
    instakillmove = 1;
else
    instakillmove = 0;

if (flash == 1 && alarm[0] <= 0)
    alarm[0] = 0.15 * room_speed;

if (state != 92 && state != 79)
    autodash = 0;

if ((state != 66 && state != 75 && state != 18) || vsp < 0)
    fallinganimation = 0;

if (state != 85 && state != 0 && state != 79)
    facehurt = 0;

if (state != 0 && state != 79)
    machslideAnim = 0;

if (state != 0)
{
    idle = 0;
    dashdust = 0;
}

if (state != 77 && state != 66 && state != 15 && state != 29 && state != 0 && state != 78 && state != 92 && state != 93 && state != 31 && state != 46 && state != 25)
    momemtum = 0;

if (state != 71 && state != 73)
    a = 0;

if (state != 42)
    facestompAnim = 0;

if (state != 82 && state != 42 && state != 51 && state != 85)
    superslam = 0;

if (state != 78)
    machpunchAnim = 0;

if (state != 66)
    ladderbuffer = 0;

if (state != 66)
    stompAnim = 0;
if (y < -800 && room != custom_lvl_room)
{
    x = roomstartx;
    y = -500;
    state = 82;
    vsp = 10;
}

if (character == "S")
{
    if (state == 75 || state == 74)
        state = 0;
}

if (!place_meeting(x, y, obj_solid))
{
    if (state != 80 && state != 13 && sprite_index != spr_player_breakdancesuper && sprite_index != spr_player_barrelslipnslide && sprite_index != spr_player_barrelroll && sprite_index != spr_bombpepintro && sprite_index != spr_knightpepthunder && state != 5 && state != 39 && state != 74 && state != 22 && (state != 47 && sprite_index != spr_player_crouchshoot) && state != 73 && state != 76 && state != 41 && state != 45 && state != 81 && state != 75)
        mask_index = spr_player_mask;
    else
        mask_index = spr_crouchmask;
}
else if (place_meeting(x, y, obj_solid))
{
    mask_index = spr_crouchmask;
}

if (character == "S" && state == 34)
    mask_index = spr_player_mask;
else if (character == "S")
    mask_index = spr_crouchmask;

if (state == 30 || sprite_index == spr_knightpepstart || sprite_index == spr_knightpepthunder || state == 64 || state == 86 || state == 7 || state == 72 || state == 69 || state == 63)
    cutscene = 1;
else
    cutscene = 0;

if (((place_meeting(x, y, obj_door) && !place_meeting(x, y, obj_doorblocked)) || place_meeting(x, y, obj_taxi) || place_meeting(x, y, obj_dresser) || place_meeting(x, y, obj_snick) || place_meeting(x, y, obj_keydoor) || place_meeting(x, y, obj_geromedoor) || (place_meeting(x, y, obj_exitgate) && global.panic == 1)) && !instance_exists(obj_uparrow) && scr_solid(x, y + 1) && state == 0 && obj_player.spotlight == 1)
{
    with (instance_create(x, y, obj_uparrow))
        playerid = other.object_index;
}

if (state == 78 && !instance_exists(speedlineseffectid))
{
    with (instance_create(x, y, obj_speedlines))
    {
        playerid = other.object_index;
        other.speedlineseffectid = id;
    }
}

scr_collide_destructibles();

if (state != 14 && state != 119 && state != 86 && state != 71 && state != 7 && state != 69 && state != 89 && state != 64 && state != 72 && state != 26 && state != 44 && state != 30 && state != 63)
    scr_collide_player();

if (state == 89)
    scr_collide_player();

