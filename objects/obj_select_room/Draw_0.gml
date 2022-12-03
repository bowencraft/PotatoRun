/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 



draw_sprite_ext(spr_ch01,0,char_spr_x_1,char_spr_y_1,sprite_scale,sprite_scale,0,c_white,1);
draw_sprite_ext(spr_ch02,0,char_spr_x_2,char_spr_y_1,sprite_scale,sprite_scale,0,c_white,1);
draw_sprite_ext(spr_ch03,0,char_spr_x_3,char_spr_y_1,sprite_scale,sprite_scale,0,c_white,1);
draw_sprite_ext(spr_ch04,0,char_spr_x_4,char_spr_y_1,sprite_scale,sprite_scale,0,c_white,1);
draw_sprite_ext(spr_ch05,0,char_spr_x_5,char_spr_y_1,sprite_scale,sprite_scale,0,c_white,1);
draw_sprite_ext(spr_ch06,0,char_spr_x_1,char_spr_y_2,sprite_scale,sprite_scale,0,c_white,1);
draw_sprite_ext(spr_ch07,0,char_spr_x_2,char_spr_y_2,sprite_scale,sprite_scale,0,c_white,1);
draw_sprite_ext(spr_ch08,0,char_spr_x_3,char_spr_y_2,sprite_scale,sprite_scale,0,c_white,1);
draw_sprite_ext(spr_ch09,0,char_spr_x_4,char_spr_y_2,sprite_scale,sprite_scale,0,c_white,1);
draw_sprite_ext(spr_ch10,0,char_spr_x_5,char_spr_y_2,sprite_scale,sprite_scale,0,c_white,1);
draw_sprite_ext(spr_ch11,0,char_spr_x_1,char_spr_y_3,sprite_scale,sprite_scale,0,c_white,1);
draw_sprite_ext(spr_ch12,0,char_spr_x_2,char_spr_y_3,sprite_scale,sprite_scale,0,c_white,1);
draw_sprite_ext(spr_ch13,0,char_spr_x_3,char_spr_y_3,sprite_scale,sprite_scale,0,c_white,1);
draw_sprite_ext(spr_ch14,0,char_spr_x_4,char_spr_y_3,sprite_scale,sprite_scale,0,c_white,1);
draw_sprite_ext(spr_ch15,0,char_spr_x_5,char_spr_y_3,sprite_scale,sprite_scale,0,c_white,1);


//plr_origin_x = room_width / 2;
//plr_origin_y = 60;
//plr_interval_2 = 32;
//plr_interval_3 = 24;
//plr_interval_4 = 16;

//plr_sprite_size = 96;
//plr_sprite_scale = 6;
//show_debug_message(string(player_ls[|0]) + ", " + string(player_ls[|1]) + ", " + string(player_ls[|2]) + ", " + string(player_ls[|3]))

if (player_amount == 1) {
	temp_player = ds_list_find_value(player_ls,0);
	draw_sprite_ext(script_char(temp_player.sel),0,plr_origin_x - 0.5 * plr_sprite_size,plr_origin_y,plr_sprite_scale,plr_sprite_scale,0,c_white,1);

	
} else if (player_amount == 2) {
	
	temp_player = ds_list_find_value(player_ls,0);
	draw_sprite_ext(script_char(temp_player.sel),0,plr_origin_x - 1 * plr_sprite_size - 0.5 * plr_interval_2,plr_origin_y,plr_sprite_scale,plr_sprite_scale,0,c_white,1);

	temp_player = ds_list_find_value(player_ls,1);
	draw_sprite_ext(script_char(temp_player.sel),0,plr_origin_x + 0.5 * plr_interval_2,plr_origin_y,plr_sprite_scale,plr_sprite_scale,0,c_white,1);

} else if (player_amount == 3) {
	temp_player = ds_list_find_value(player_ls,0);
	draw_sprite_ext(script_char(temp_player.sel),0,plr_origin_x - 1.5 * plr_sprite_size - 1 * plr_interval_3,plr_origin_y,plr_sprite_scale,plr_sprite_scale,0,c_white,1);

	temp_player = ds_list_find_value(player_ls,1);
	draw_sprite_ext(script_char(temp_player.sel),0,plr_origin_x - 0.5 * plr_sprite_size,plr_origin_y,plr_sprite_scale,plr_sprite_scale,0,c_white,1);

	temp_player = ds_list_find_value(player_ls,2);
	draw_sprite_ext(script_char(temp_player.sel),0,plr_origin_x +  0.5 * plr_sprite_size + 1 * plr_interval_3,plr_origin_y,plr_sprite_scale,plr_sprite_scale,0,c_white,1);

} else if (player_amount == 4) {
	temp_player = ds_list_find_value(player_ls,0);
	draw_sprite_ext(script_char(temp_player.sel),0,plr_origin_x - 2 * plr_sprite_size - 1.5 * plr_interval_4,plr_origin_y,plr_sprite_scale,plr_sprite_scale,0,c_white,1);

	temp_player = ds_list_find_value(player_ls,1);
	draw_sprite_ext(script_char(temp_player.sel),0,plr_origin_x - 1 * plr_sprite_size - 0.5 * plr_interval_4,plr_origin_y,plr_sprite_scale,plr_sprite_scale,0,c_white,1);

	temp_player = ds_list_find_value(player_ls,2);
	draw_sprite_ext(script_char(temp_player.sel),0,plr_origin_x + 0.5 * plr_interval_4,plr_origin_y,plr_sprite_scale,plr_sprite_scale,0,c_white,1);

	temp_player = ds_list_find_value(player_ls,3);
	draw_sprite_ext(script_char(temp_player.sel),0,plr_origin_x + 1 * plr_sprite_size + 1.5 * plr_interval_4,plr_origin_y,plr_sprite_scale,plr_sprite_scale,0,c_white,1);

}

