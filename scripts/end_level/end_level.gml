function end_level()
{
	var roomname, namestring;
	if (global.timeattack == 1)
		obj_timeattack.stop = 1;
        
	targetDoor = "none";
	obj_camera.alarm[2] = -1;
        
	if ((global.collect + global.collectN) >= global.srank)
	{
		global.rank = "s";

		if (global.snickchallenge == 1)
		global.SAGEsnicksrank = 1;
	}
	else if ((global.collect + global.collectN) > global.arank)
		global.rank = "a";
	else if ((global.collect + global.collectN) > global.brank)
		global.rank = "b";
	else if ((global.collect + global.collectN) > global.crank)
		global.rank = "c";
	else
		global.rank = "d";
        
	if (global.rank == "s")
		scr_soundeffect(mu_ranks);
        
	if (global.rank == "a")
		scr_soundeffect(mu_ranka);
        
	if (global.rank == "b")
		scr_soundeffect(mu_rankc);
        
	if (global.rank == "c")
		scr_soundeffect(mu_rankc);
        
	if (global.rank == "d")
		scr_soundeffect(mu_rankd);
	
    audio_group_stop_all(music)
	ini_open("saveData.ini");
	roomname = room_get_name(room);
	namestring = string_letters(roomname);
	ini_open("saveData.ini");
        
	if (ini_read_real("Highscore", namestring, 0) < global.collect)
		ini_write_real("Highscore", namestring, global.collect);
        
	if (ini_read_real("Treasure", namestring, 0) == 0)
		ini_write_real("Treasure", namestring, global.treasure);
        
	if (ini_read_real("Secret", namestring, 0) < global.secretfound)
		ini_write_string("Secret", namestring, global.secretfound);
        
	if (ini_read_real("Toppin", namestring + "1", 0) == 0)
		ini_write_real("Toppin", namestring + "1", global.shroomfollow);
        
	if (ini_read_real("Toppin", namestring + "2", 0) == 0)
		ini_write_real("Toppin", namestring + "2", global.cheesefollow);
        
	if (ini_read_real("Toppin", namestring + "3", 0) == 0)
		ini_write_real("Toppin", namestring + "3", global.tomatofollow);
        
	if (ini_read_real("Toppin", namestring + "4", 0) == 0)
		ini_write_real("Toppin", namestring + "4", global.sausagefollow);
        
	if (ini_read_real("Toppin", namestring + "5", 0) == 0)
		ini_write_real("Toppin", namestring + "5", global.pineapplefollow);
        
	if (global.rank == "s")
		ini_write_string("Ranks", namestring, global.rank);
        
	if (global.rank == "a" && "s" != ini_read_string("Ranks", namestring, "none"))
		ini_write_string("Ranks", namestring, global.rank);
        
	if (global.rank == "b" && "s" != ini_read_string("Ranks", namestring, "none") && "a" != ini_read_string("Ranks", namestring, "none"))
		ini_write_string("Ranks", namestring, global.rank);
        
	if (global.rank == "c" && "s" != ini_read_string("Ranks", namestring, "none") && "a" != ini_read_string("Ranks", namestring, "none") && "b" != ini_read_string("Ranks", namestring, "none"))
		ini_write_string("Ranks", namestring, global.rank);
        
	if (global.rank == "d" && "s" != ini_read_string("Ranks", namestring, "none") && "a" != ini_read_string("Ranks", namestring, "none") && "b" != ini_read_string("Ranks", namestring, "none") && "c" != ini_read_string("Ranks", namestring, "none"))
		ini_write_string("Ranks", namestring, global.rank);
        
	ini_close();
        
	if (!instance_exists(obj_endlevelfade))
		instance_create(x, y, obj_endlevelfade);
        
	obj_player.state = 86;
	obj_player.sprite_index = obj_player.spr_lookdoor;
	obj_endlevelfade.alarm[0] = 235;
	image_index = 0;
	global.panic = 0;
	global.snickchallenge = 0;
}