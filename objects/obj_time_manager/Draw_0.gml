if (obj_time_manager.game_timer < 0) {
	gpu_set_blendenable(false);
	gpu_set_colorwriteenable(false,false,false,true);

	draw_set_alpha(1);
	draw_rectangle(0,0, room_width,room_height, false);

	draw_set_alpha(0);
	if (obj_camera.cam_height + game_timer >20) {
		draw_circle(potato_player.x,potato_player.y, obj_camera.cam_height+game_timer, false);
	} else {
		draw_circle(potato_player.x,potato_player.y, 20, false);	
	}
	draw_set_alpha(1);

	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);

	c_main_color = make_color_rgb(32,90,155);
	draw_rectangle_color(0,0, room_width,room_height,c_main_color, c_main_color,c_main_color,c_main_color,false);
	//draw_sprite(background_pic,0,0,0);

	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);

} else {}

draw_self();
