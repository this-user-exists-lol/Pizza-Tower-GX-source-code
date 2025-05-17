var limit, i, xx, yy, _offset, use_offset, __id;

switch (state)
{
    case 0:
        if (collisioned)
        {
            if ((dir == 1 && targetplayer.x > (x + offset)) || (dir == -1 && targetplayer.x < (x - offset)))
            {
                if (!instance_exists(block_inst))
                {
                    block_inst = instance_create_depth(x, y, depth, obj_solid);
                    block_inst.sprite_index = spr_arenagate_open;
                    block_inst.mask_index = spr_arenagate_open;
                    block_inst.image_xscale = image_xscale;
                    block_inst.image_yscale = image_yscale;
                    block_inst.visible = false;
                }
                
                with (obj_arenagate)
                {
                    if (!instance_exists(block_inst))
                    {
                        block_inst = instance_create_depth(x, y, depth, obj_solid);
                        block_inst.sprite_index = spr_arenagate_open;
                        block_inst.mask_index = spr_arenagate_open;
                        block_inst.image_xscale = image_xscale;
                        block_inst.image_yscale = image_yscale;
                        block_inst.visible = false;
                    }
                    
                    sprite_index = spr_arenagate_close;
                }
                
                cutscene_count = cutscene_max;
                state = 115;
                sprite_index = spr_arenagate_close;
                image_speed = 0.5;
                
                with (obj_camera)
                {
                    shake_mag = 3;
                    shake_mag_acc = 3 / room_speed;
                }
            }
        }
        
        break;
    
    case 115:
        with (obj_player)
        {
            xscale = sign(other.x - x);
            state = 115;
            sprite_index = spr_player_bossintro;
        }
        
        if (cutscene_count > 0)
        {
            cutscene_count--;
        }
        else
        {
            with (obj_player)
            {
                state = 0;
                image_index = 0;
            }
            
            state = 116;
            round_count = round_max;
        }
        
        break;
    
    case 116:
        if (round_count > 0)
            round_count--;
        else
            state = 113;
        
        break;
    
    case 113:
        limit = instance_nearest(x, y, obj_arenalimit);
        
        for (i = 0; i < array_length_2d(baddie_arr, wave); i++)
        {
            xx = random_range(limit.x + 64, (limit.x + limit.sprite_width) - 64);
            yy = limit.y + (limit.sprite_height / 2);
            _offset = random_range(-y_offset, y_offset);
            use_offset = 1;
            
            if (!baddie_random[wave, i])
            {
                __id = baddie_spawnpoint[wave, i];
                
                with (obj_arenaspawnpoint)
                {
                    if (spawn_id == __id)
                    {
                        xx = x;
                        yy = y;
                        use_offset = 0;
                    }
                }
            }
            
            with (instance_create_depth(xx, yy, depth, baddie_arr[wave, i]))
            {
                if (use_offset)
                {
                    if (!scr_solid(x, y + _offset))
                        y = yy + _offset;
                }
                
                important = 1;
                instance_create(x, y, obj_pizzaportalfade);
                state = 109;
                stunned = 50;
            }
        }
        
        wave_minutes = minutes;
        wave_seconds = seconds;
        alarm[0] = 60;
        state = 114;
        break;
    
    case 114:
        if (!instance_exists(obj_baddie))
        {
            wave++;
            
            if (wave > (array_height_2d(baddie_arr) - 1))
            {
                image_index = 0;
                sprite_index = spr_arenagate_open;
                state = 8;
                instance_destroy(block_inst);
                
                with (obj_arenagate)
                {
                    image_index = 0;
                    sprite_index = spr_arenagate_open;
                    instance_destroy(block_inst);
                }
                
                cutscene_count = outro_max;
                
                with (obj_player)
                {
                    with (obj_music)
                        arena = 0;
                    
                    state = 115;
                    image_index = 0;
                    sprite_index = spr_player_levelcomplete;
                }
            }
            else
            {
                state = 116;
                round_count = round_max;
            }
        }
        
        break;
    
    case 8:
        if (cutscene_count > 0)
        {
            cutscene_count--;
        }
        else
        {
            state = 72;
            
            with (obj_player)
            {
                state = 0;
                image_index = 0;
            }
        }
        
        break;
    
    case 72:
        ds_list_add(global.baddieroom, id);
        instance_destroy();
        break;
}

if (sprite_index == spr_arenagate_close && image_index > (image_number - 1))
    image_index = image_number - 1;

if (sprite_index == spr_arenagate_open && image_index > (image_number - 1))
    sprite_index = spr_arenagate_opened;
