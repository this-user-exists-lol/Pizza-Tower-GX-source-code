if (falling == 1 && vsp > 0)
{
    hit = 1;
    instance_create(x, y, obj_stompeffect);
    obj_player.image_index = 0;
    obj_player.state = 39;
    obj_player.sprite_index = spr_player_stunned;
    vsp = -5;
    falling = 0;
    
    with (obj_camera)
    {
        shake_mag = 10;
        shake_mag_acc = 30 / room_speed;
    }
}
