draw_sprite(sprite_index,image_index,x,y)
draw_set_font(global.smallfont);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(obj_player.x, (sprite_get_bbox_top(obj_player.sprite_index) + obj_player.y) - 70, string_hash_to_newline(scorecombo));





