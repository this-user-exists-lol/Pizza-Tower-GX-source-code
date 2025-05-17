function scr_playerreset()
{
	var destroy;
	
	global.checkpointroom = 4;
	global.checkpointDoor = "A";
	global.checkpointCollect = 0;
	global.checkpointCollectN = 0;
	global.checkpoint_hp = 0;
	global.hp = 0;
	global.checkpoint_shroomfollow = 0;
	global.checkpoint_cheesefollow = 0;
	global.checkpoint_tomatofollow = 0;
	global.checkpoint_pineapplefollow = 0;
	global.checkpoint_sausagefollow = 0;
	global.checkpoint_pizzasdelivered = 0;
	global.checkpoint_key_inv = 0;
	global.checkpoint_gnomecheck0 = 0;
	global.checkpoint_gnomecheck1 = 0;
	global.checkpoint_gnomecheck2 = 0;
	global.checkpoint_gnomecheck3 = 0;
	global.checkpoint_gnomecheck4 = 0;
	
	with (obj_music)
	    arena = 0;
	
	ds_list_clear(global.old_baddieroom);
	ds_list_clear(global.old_saveroom);
	
	if (instance_exists(obj_endlevelfade))
	    instance_destroy(obj_endlevelfade);
	
	if (instance_exists(obj_gnome_checklist))
	{
	    destroy = 1;
	    
	    with (obj_player)
	    {
	        if (state == 63 || state == 44)
	            destroy = 0;
	    }
	    
	    if (destroy)
	        instance_destroy(obj_gnome_checklist);
	}
	
	global.timeractive = 0;
	global.wave = 0;
	global.maxwave = 0;
	global.secretfound = 0;
	global.hurtcounter = 0;
	global.snickchallenge = 0;
	global.timeattack = 0;
	global.giantkey = 0;
	global.pizzadelivery = 0;
	global.failcutscene = 0;
	global.pizzasdelivered = 0;
	
	if (instance_exists(obj_snickexe))
	    instance_destroy(obj_snickexe);
	
	obj_timeattack.stop = 0;
	
	if (instance_exists(obj_pizzaface))
	    instance_destroy(obj_pizzaface);
	
	if (instance_exists(obj_pizzashield))
	    instance_destroy(obj_pizzashield);
	
	global.timedgate = 0;
	global.taseconds = 0;
	global.taminutes = 0;
	obj_player.spotlight = 1;
	if (instance_exists(obj_toppinwarrior))
	    instance_destroy(obj_toppinwarrior);
	if (instance_exists(obj_pizzakinshroom))
		instance_destroy(obj_pizzakinshroom)
	if (instance_exists(obj_pizzakincheese))
		instance_destroy(obj_pizzakincheese)
	if (instance_exists(obj_pizzakintomato))
		instance_destroy(obj_pizzakintomato)
	if (instance_exists(obj_pizzakinsausage))
		instance_destroy(obj_pizzakinsausage)
	if (instance_exists(obj_pizzakinpineapple))
		instance_destroy(obj_pizzakinpineapple)
	if (instance_exists(obj_gerome))
		instance_destroy(obj_gerome)
	
	with (obj_hud)
	{
	    shownranka = 0;
	    shownrankb = 0;
	    shownrankc = 0;
	}
	
	global.SAGEshotgunsnicknumber = 0;
	obj_music.fadeoff = 0;
	audio_stop_all();
	
	if (instance_exists(obj_timesup))
	    instance_destroy(obj_timesup);
	
	global.seconds = 59;
	global.minutes = 1;
	obj_player.state = 69;
	obj_player.visible = true;
	ds_list_clear(global.saveroom);
	ds_list_clear(global.baddieroom);
	
	with (obj_player)
	{
	    image_blend = make_colour_hsv(0, 0, 255);
	    supercharged = 0;
	    pizzapepper = 0;
	    pizzashield = 0;
	    c = 0;
	    heavy = 0;
	    image_index = 0;
	    sprite_index = spr_walkfront;
	    alarm[0] = -1;
	    alarm[1] = -1;
	    alarm[3] = -1;
	    alarm[4] = -1;
	    alarm[5] = -1;
	    alarm[6] = -1;
	    alarm[7] = -1;
	    alarm[8] = -1;
	    alarm[9] = -1;
	    alarm[10] = -1;
	    grav = 0.5;
	    hsp = 0;
	    vsp = 0;
	    global.playerhealth = 100;
	    xscale = 1;
	    yscale = 1;
		xscalestretch = 0
		yscalestretch = 0
	    pogospeed = 6;
	    pogochargeactive = 0;
	    pogocharge = 100;
	    x = backtohubstartx;
	    y = backtohubstarty;
	    backupweapon = 0;
	    shotgunAnim = 0;
	    box = 0;
	    steppy = 0;
	    movespeedmax = 5;
	    jumpstop = 0;
	    start_running = 1;
	    obj_camera.ded = 0;
	    visible = true;
	    global.panic = 0;
	    turn = 0;
	    jumpAnim = 1;
	    dashAnim = 1;
	    landAnim = 0;
	    machslideAnim = 0;
	    moveAnim = 1;
	    stopAnim = 1;
	    crouchslideAnim = 1;
	    crouchAnim = 1;
	    machhitAnim = 0;
	    stompAnim = 0;
	    inv_frames = 0;
	    turning = 0;
	    hurtbounce = 0;
	    hurted = 0;
	    autodash = 0;
	    mach2 = 0;
	    input_buffer_jump = 8;
	    input_buffer_secondjump = 8;
	    input_buffer_highjump = 8;
	    flash = 0;
	    global.key_inv = 0;
	    global.shroomfollow = 0;
	    global.cheesefollow = 0;
	    global.tomatofollow = 0;
	    global.sausagefollow = 0;
	    global.pineapplefollow = 0;
		global.gotgerome = 0
	    global.keyget = 0;
	    global.collect = 0;
	    global.collectN = 0;
	    global.ammo = 0;
	    global.treasure = 0;
	    global.combo = 0;
	    global.combotime = 0;
	    global.pizzacoin = 0;
	    global.toppintotal = 1;
	    global.hit = 0;
	    ini_open("saveData.ini");
	    global.SAGEshotgunsnick = ini_read_string("SAGE2019", "shotgunsnick", 0);
	    global.SAGEshotgunsnicknumber = 0;
	    global.SAGEdungeonbackup = ini_read_string("SAGE2019", "dungeonbackup", 0);
	    global.SAGEsrank = ini_read_string("SAGE2019", "srank", 0);
	    global.SAGEsnicksrank = ini_read_string("SAGE2019", "snicksrank", 0);
	    global.SAGEcombo10 = ini_read_string("SAGE2019", "combo10", 0);
	    global.SAGEsecret = ini_read_string("SAGE2019", "secret", 0);
	    global.SAGEknight = ini_read_string("SAGE2019", "knight", 0);
	    global.SAGEknighttaken = 0;
	    global.SAGEtoppin = ini_read_string("SAGE2019", "toppin", 0);
	    global.SAGEtreasure = ini_read_string("SAGE2019", "treasure", 0);
	    ini_close();
	    in_water = 0;
	    key_particles = 0;
	    barrel = 0;
	    bounce = 0;
	    a = 0;
	    idle = 0;
	    attacking = 0;
	    slamming = 0;
	    superslam = 0;
	    machpunchAnim = 0;
	    punch = 0;
	    machfreefall = 0;
	    shoot = 1;
	    instakillmove = 0;
	    windingAnim = 0;
	    facestompAnim = 0;
	    ladderbuffer = 0;
	    chainsaw = 50;
	    toomuchalarm1 = 0;
	    toomuchalarm2 = 0;
	    dashdust = 0;
	    throwforce = 0;
	    hurtsound = sfx_jump;
	    idleanim = 0;
	    momemtum = 0;
	    cutscene = 0;
	    grabbing = 0;
	    dir = xscale;
	    goingdownslope = 0;
	    goingupslope = 0;
	    fallinganimation = 0;
	    bombpeptimer = 100;
	    slapbuffer = 0;
	    slaphand = 1;
	    suplexmove = 0;
	    suplexhavetomash = 0;
	    timeuntilhpback = 300;
	    anger = 0;
	    angry = 0;
	}
}
