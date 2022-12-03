/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

global.room_run_tick ++;

if (keyboard_check_pressed(ord("E"))) {
	if (ds_list_find_index(input_ls,"WASD") == -1) {
		player = instance_create_layer(char_spr_x_1,char_spr_y_1,"Players_layer",obj_select_player);
		player.player_index = ds_list_size(player_ls);
		player.input_method = 0;
		ds_list_add(player_ls,player);
		ds_list_add(input_ls,"WASD");
	}
}

if (keyboard_check_pressed(vk_enter)) {
	if (ds_list_find_index(input_ls,"ARRW") == -1) {
		player = instance_create_layer(char_spr_x_2,char_spr_y_1,"Players_layer",obj_select_player);
		player.player_index = ds_list_size(player_ls);
		player.input_method = 1;
		ds_list_add(player_ls,player);
		ds_list_add(input_ls,"ARRW");
	}
}

if (gamepad_button_check_pressed(0,gp_face1)) {
	if (ds_list_find_index(input_ls,"GMPD1") == -1) {
		player = instance_create_layer(char_spr_x_1,char_spr_y_1,"Players_layer",obj_select_player);
		player.player_index = ds_list_size(player_ls);
		player.input_method = 2;
		ds_list_add(player_ls,player);
		ds_list_add(input_ls,"GMPD1");
	}
}

if (gamepad_button_check_pressed(1,gp_face1)) {
	if (ds_list_find_index(input_ls,"GMPD2") == -1) {
		player = instance_create_layer(char_spr_x_1,char_spr_y_1,"Players_layer",obj_select_player);
		player.player_index = ds_list_size(player_ls);
		player.input_method = 3;
		ds_list_add(player_ls,player);
		ds_list_add(input_ls,"GMPD2");
	}
}