/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if (global.room_run_tick % 10 == 0) {
	if (image_frame == 4) {
		image_frame = 0;
	
	} else {
	
		image_frame ++;
	}
}

draw_sprite_ext(script_char(1),0,char_spr_x_1,char_spr_y_1,sprite_scale,sprite_scale,0,c_white,1);
draw_sprite_ext(script_char(2),0,char_spr_x_2,char_spr_y_1,sprite_scale,sprite_scale,0,c_white,1);
draw_sprite_ext(script_char(3),0,char_spr_x_3,char_spr_y_1,sprite_scale,sprite_scale,0,c_white,1);
draw_sprite_ext(script_char(4),0,char_spr_x_4,char_spr_y_1,sprite_scale,sprite_scale,0,c_white,1);
draw_sprite_ext(script_char(5),0,char_spr_x_5,char_spr_y_1,sprite_scale,sprite_scale,0,c_white,1);
draw_sprite_ext(script_char(6),0,char_spr_x_1,char_spr_y_2,sprite_scale,sprite_scale,0,c_white,1);
draw_sprite_ext(script_char(7),0,char_spr_x_2,char_spr_y_2,sprite_scale,sprite_scale,0,c_white,1);
draw_sprite_ext(script_char(8),0,char_spr_x_3,char_spr_y_2,sprite_scale,sprite_scale,0,c_white,1);
draw_sprite_ext(script_char(9),0,char_spr_x_4,char_spr_y_2,sprite_scale,sprite_scale,0,c_white,1);
draw_sprite_ext(script_char(10),0,char_spr_x_5,char_spr_y_2,sprite_scale,sprite_scale,0,c_white,1);
draw_sprite_ext(script_char(11),0,char_spr_x_1,char_spr_y_3,sprite_scale,sprite_scale,0,c_white,1);
draw_sprite_ext(script_char(12),0,char_spr_x_2,char_spr_y_3,sprite_scale,sprite_scale,0,c_white,1);
draw_sprite_ext(script_char(13),0,char_spr_x_3,char_spr_y_3,sprite_scale,sprite_scale,0,c_white,1);
draw_sprite_ext(script_char(14),0,char_spr_x_4,char_spr_y_3,sprite_scale,sprite_scale,0,c_white,1);
draw_sprite_ext(script_char(15),0,char_spr_x_5,char_spr_y_3,sprite_scale,sprite_scale,0,c_white,1);

draw_set_font(font_pixel_mini);
draw_sprite_ext(leave,0,0,room_height - 80,1,1,0,c_white,1);

if (player_amount == 0){
	draw_sprite_ext(press_to_join,0,plr_origin_x,140,1,1,0,c_white,1);
	draw_sprite_ext(player_requirement,0,plr_origin_x,room_height - 170,1,1,0,c_white,1);
} else {
	draw_sprite_ext(press_to_join,0,plr_origin_x,room_height - 110,1,1,0,c_white,1);
	
}

if (player_amount >= 2) {
	draw_sprite_ext(wait_ready,0,plr_origin_x,room_height - 170,1,1,0,c_white,1);
	
}

if (player_amount == 1) {
	plr1_x = plr_origin_x;
	draw_sprite_ext(player_requirement,0,plr_origin_x,room_height - 170,1,1,0,c_white,1);
	
	temp_player = ds_list_find_value(player_ls,0);
	draw_sprite_ext(script_char(temp_player.sel),image_frame,plr1_x - 0.5 * plr_sprite_size + plr_offset_x,plr_origin_y + plr_offset_y,plr_sprite_scale,plr_sprite_scale,0,c_white,1);
	
	text_width = string_width("P1");
	draw_text_color(plr1_x - 0.5 * plr_sprite_size - text_width/2,plr_origin_y - 2,
	"P1", c_white,c_white,c_white,c_white,1);
	
	if (temp_player.ready_status) {
		draw_sprite_ext(ready,0,plr1_x,plr_origin_y + 100,1,1,0,c_white,1);
	} else {
		if (temp_player.input_method == 0) {
			draw_sprite_ext(ready_space,0,plr1_x,plr_origin_y + 100,1,1,0,c_white,1);
		} else if (temp_player.input_method == 1) {
			draw_sprite_ext(ready_enter,0,plr1_x,plr_origin_y + 100,1,1,0,c_white,1);
		} else {
			draw_sprite_ext(ready_controller,0,plr1_x,plr_origin_y + 100,1,1,0,c_white,1);
		} 
	}
	
} else if (player_amount == 2) {
	plr1_x = plr_origin_x - 0.5 * plr_sprite_size - 0.5 * plr_interval_2;
	plr2_x = plr_origin_x + 0.5 * plr_interval_2;
	
	temp_player = ds_list_find_value(player_ls,0);
	draw_sprite_ext(script_char(temp_player.sel),image_frame,plr1_x - 0.5 * plr_sprite_size + plr_offset_x,plr_origin_y + plr_offset_y,plr_sprite_scale,plr_sprite_scale,0,c_white,1);
	
	text_width = string_width("P1");
	draw_text_color(plr1_x - 0.5 * plr_sprite_size - text_width/2, plr_origin_y - 2,
	"P1", c_white,c_white,c_white,c_white,1);
	if (temp_player.ready_status) {
		draw_sprite_ext(ready,0,plr1_x,plr_origin_y + 100,1,1,0,c_white,1);
	} else {
		if (temp_player.input_method == 0) {
			draw_sprite_ext(ready_space,0,plr1_x,plr_origin_y + 100,1,1,0,c_white,1);
		} else if (temp_player.input_method == 1) {
			draw_sprite_ext(ready_enter,0,plr1_x,plr_origin_y + 100,1,1,0,c_white,1);
		} else {
			draw_sprite_ext(ready_controller,0,plr1_x,plr_origin_y + 100,1,1,0,c_white,1);
		} 
	}



	temp_player = ds_list_find_value(player_ls,1);
	draw_sprite_ext(script_char(temp_player.sel),image_frame,plr2_x - 0.5 * plr_sprite_size + plr_offset_x,plr_origin_y + plr_offset_y,plr_sprite_scale,plr_sprite_scale,0,c_white,1);
	
	text_width = string_width("P2");
	draw_text_color(plr2_x - 0.5 * plr_sprite_size - text_width/2,plr_origin_y - 2,
	"P2", c_white,c_white,c_white,c_white,1);

	if (temp_player.ready_status) {
		draw_sprite_ext(ready,0,plr2_x,plr_origin_y + 100,1,1,0,c_white,1);
	} else {
		if (temp_player.input_method == 0) {
			draw_sprite_ext(ready_space,0,plr2_x,plr_origin_y + 100,1,1,0,c_white,1);
		} else if (temp_player.input_method == 1) {
			draw_sprite_ext(ready_enter,0,plr2_x,plr_origin_y + 100,1,1,0,c_white,1);
		} else {
			draw_sprite_ext(ready_controller,0,plr2_x,plr_origin_y + 100,1,1,0,c_white,1);
		} 
	}

} else if (player_amount == 3) {
	plr1_x = plr_origin_x - 1 * plr_sprite_size - 1 * plr_interval_3;
	plr2_x = plr_origin_x;
	plr3_x = plr_origin_x +  1 * plr_sprite_size + 1 * plr_interval_3;
	
	temp_player = ds_list_find_value(player_ls,0);
	draw_sprite_ext(script_char(temp_player.sel),image_frame,plr1_x - 0.5 * plr_sprite_size + plr_offset_x,plr_origin_y + plr_offset_y,plr_sprite_scale,plr_sprite_scale,0,c_white,1);
	
	text_width = string_width("P1");
	draw_text_color(plr1_x - 0.5 * plr_sprite_size - text_width/2,plr_origin_y - 2,
	"P1", c_white,c_white,c_white,c_white,1);

	if (temp_player.ready_status) {
		draw_sprite_ext(ready,0,plr1_x,plr_origin_y + 100,1,1,0,c_white,1);
	} else {
		if (temp_player.input_method == 0) {
			draw_sprite_ext(ready_space,0,plr1_x,plr_origin_y + 100,1,1,0,c_white,1);
		} else if (temp_player.input_method == 1) {
			draw_sprite_ext(ready_enter,0,plr1_x,plr_origin_y + 100,1,1,0,c_white,1);
		} else {
			draw_sprite_ext(ready_controller,0,plr1_x,plr_origin_y + 100,1,1,0,c_white,1);
		} 
	}

	temp_player = ds_list_find_value(player_ls,1);
	draw_sprite_ext(script_char(temp_player.sel),image_frame,plr2_x - 0.5 * plr_sprite_size + plr_offset_x,plr_origin_y + plr_offset_y,plr_sprite_scale,plr_sprite_scale,0,c_white,1);
	
	text_width = string_width("P2");
	draw_text_color(plr2_x - 0.5 * plr_sprite_size - text_width/2,plr_origin_y - 2,
	"P2", c_white,c_white,c_white,c_white,1);

	if (temp_player.ready_status) {
		draw_sprite_ext(ready,0,plr2_x,plr_origin_y + 100,1,1,0,c_white,1);
	} else {
		if (temp_player.input_method == 0) {
			draw_sprite_ext(ready_space,0,plr2_x,plr_origin_y + 100,1,1,0,c_white,1);
		} else if (temp_player.input_method == 1) {
			draw_sprite_ext(ready_enter,0,plr2_x,plr_origin_y + 100,1,1,0,c_white,1);
		} else {
			draw_sprite_ext(ready_controller,0,plr2_x,plr_origin_y + 100,1,1,0,c_white,1);
		} 
	}

	temp_player = ds_list_find_value(player_ls,2);
	draw_sprite_ext(script_char(temp_player.sel),image_frame,plr3_x - 0.5 * plr_sprite_size + plr_offset_x,plr_origin_y + plr_offset_y,plr_sprite_scale,plr_sprite_scale,0,c_white,1);
	
	text_width = string_width("P3");
	draw_text_color(plr3_x - 0.5 * plr_sprite_size - text_width/2,plr_origin_y - 2,
	"P3", c_white,c_white,c_white,c_white,1);
	
	if (temp_player.ready_status) {
		draw_sprite_ext(ready,0,plr3_x,plr_origin_y + 100,1,1,0,c_white,1);
	} else {
		if (temp_player.input_method == 0) {
			draw_sprite_ext(ready_space,0,plr3_x,plr_origin_y + 100,1,1,0,c_white,1);
		} else if (temp_player.input_method == 1) {
			draw_sprite_ext(ready_enter,0,plr3_x,plr_origin_y + 100,1,1,0,c_white,1);
		} else {
			draw_sprite_ext(ready_controller,0,plr3_x,plr_origin_y + 100,1,1,0,c_white,1);
		} 
	}
	
} else if (player_amount == 4) {
	
	plr1_x = plr_origin_x - 1.5 * plr_sprite_size - 1.5 * plr_interval_4;
	plr2_x = plr_origin_x - 1 * plr_sprite_size - 0.5 * plr_interval_4;
	plr3_x = plr_origin_x + 0.5 * plr_interval_4;
	plr4_x = plr_origin_x + 1 * plr_sprite_size + 1.5 * plr_interval_4;
	
	
	temp_player = ds_list_find_value(player_ls,0);
	draw_sprite_ext(script_char(temp_player.sel),image_frame,plr1_x - 0.5 * plr_sprite_size + plr_offset_x,plr_origin_y + plr_offset_y,plr_sprite_scale,plr_sprite_scale,0,c_white,1);
	text_width = string_width("P1");
	draw_text_color(plr1_x - 0.5 * plr_sprite_size - text_width/2,plr_origin_y - 2,
	"P1", c_white,c_white,c_white,c_white,1);
	if (temp_player.ready_status) {
		draw_sprite_ext(ready,0,plr1_x,plr_origin_y + 100,1,1,0,c_white,1);
	} else {
		if (temp_player.input_method == 0) {
			draw_sprite_ext(ready_space,0,plr1_x,plr_origin_y + 100,1,1,0,c_white,1);
		} else if (temp_player.input_method == 1) {
			draw_sprite_ext(ready_enter,0,plr1_x,plr_origin_y + 100,1,1,0,c_white,1);
		} else {
			draw_sprite_ext(ready_controller,0,plr1_x,plr_origin_y + 100,1,1,0,c_white,1);
		} 
	}


	temp_player = ds_list_find_value(player_ls,1);
	draw_sprite_ext(script_char(temp_player.sel),image_frame,plr2_x - 0.5 * plr_sprite_size + plr_offset_x,plr_origin_y + plr_offset_y,plr_sprite_scale,plr_sprite_scale,0,c_white,1);
	text_width = string_width("P2");
	draw_text_color(plr2_x - 0.5 * plr_sprite_size - text_width/2,plr_origin_y - 2,
	"P2", c_white,c_white,c_white,c_white,1);

	if (temp_player.ready_status) {
		draw_sprite_ext(ready,0,plr2_x,plr_origin_y + 100,plr_sprite_scale,plr_sprite_scale,0,c_white,1);
	} else {
		if (temp_player.input_method == 0) {
			draw_sprite_ext(ready_space,0,plr2_x,plr_origin_y + 100,plr_sprite_scale,plr_sprite_scale,0,c_white,1);
		} else if (temp_player.input_method == 1) {
			draw_sprite_ext(ready_enter,0,plr2_x,plr_origin_y + 100,plr_sprite_scale,plr_sprite_scale,0,c_white,1);
		} else {
			draw_sprite_ext(ready_controller,0,plr2_x,plr_origin_y + 100,plr_sprite_scale,plr_sprite_scale,0,c_white,1);
		} 
	}
	
	temp_player = ds_list_find_value(player_ls,2);
	draw_sprite_ext(script_char(temp_player.sel),image_frame,plr3_x - 0.5 * plr_sprite_size +plr_offset_x + plr_offset_x,plr_origin_y + plr_offset_y,plr_sprite_scale,plr_sprite_scale,0,c_white,1);
	text_width = string_width("P3");
	draw_text_color(plr3_x - 0.5 * plr_sprite_size - text_width/2,plr_origin_y - 2,
	"P3", c_white,c_white,c_white,c_white,1);

	if (temp_player.ready_status) {
		draw_sprite_ext(ready,0,plr3_x,plr_origin_y + 100,plr_sprite_scale,plr_sprite_scale,0,c_white,1);
	} else {
		if (temp_player.input_method == 0) {
			draw_sprite_ext(ready_space,0,plr3_x,plr_origin_y + 100,plr_sprite_scale,plr_sprite_scale,0,c_white,1);
		} else if (temp_player.input_method == 1) {
			draw_sprite_ext(ready_enter,0,plr3_x,plr_origin_y + 100,plr_sprite_scale,plr_sprite_scale,0,c_white,1);
		} else {
			draw_sprite_ext(ready_controller,0,plr3_x,plr_origin_y + 100,plr_sprite_scale,plr_sprite_scale,0,c_white,1);
		} 
	}


	temp_player = ds_list_find_value(player_ls,3);
	draw_sprite_ext(script_char(temp_player.sel),image_frame,plr4_x - 0.5 * plr_sprite_size +plr_offset_x,plr_origin_y +plr_offset_y,plr_sprite_scale,plr_sprite_scale,0,c_white,1);
	text_width = string_width("P4");
	draw_text_color(plr4_x - 0.5 * plr_sprite_size - text_width/2,plr_origin_y - 2, 
	"P4", c_white,c_white,c_white,c_white,1);

	if (temp_player.ready_status) {
		draw_sprite_ext(ready,0,plr4_x,plr_origin_y + 100,plr_sprite_scale,plr_sprite_scale,0,c_white,1);
	} else {
		if (temp_player.input_method == 0) {
			draw_sprite_ext(ready_space,0,plr4_x,plr_origin_y + 100,plr_sprite_scale,plr_sprite_scale,0,c_white,1);
		} else if (temp_player.input_method == 1) {
			draw_sprite_ext(ready_enter,0,plr4_x,plr_origin_y + 100,plr_sprite_scale,plr_sprite_scale,0,c_white,1);
		} else {
			draw_sprite_ext(ready_controller,0,plr4_x,plr_origin_y + 100,plr_sprite_scale,plr_sprite_scale,0,c_white,1);
		} 
	}

}

