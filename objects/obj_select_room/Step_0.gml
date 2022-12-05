/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

global.room_run_tick ++;

for (var i=0;i<ds_list_size(player_ls);i++) {
	
	ds_list_set(input_method_ls,i,player_ls[|i].input_method);
	ds_list_set(player_index_ls,i,player_ls[|i].player_index);
	ds_list_set(character_ls,i,player_ls[|i].sel);
	ds_list_set(role_ls,i,player_ls[|i].role);

}

if (player_amount >= 2) {
	all_ready = true;
	for (var i=0;i<ds_list_size(player_ls);i++) {
		temp_player = ds_list_find_value(player_ls,i);
		if (temp_player.ready_status == false)	all_ready = false;
	}
	if (all_ready) {
		show_debug_message("Game start!");
		//alarm[0] = 1*room_speed;
		room_goto(PlayRoom_2);
	}
}


if (keyboard_check_pressed(vk_space)) {
	if (ds_list_find_index(input_ls,"WASD") == -1) {
		player = instance_create_layer(char_spr_x_1,char_spr_y_1,"Players_layer",obj_select_player);
		player.player_index = ds_list_size(player_ls);
		player.input_method = 0;
		ds_list_add(player_ls,player);
		ds_list_add(input_ls,"WASD");
		player_amount ++;
	}
}

if (keyboard_check_pressed(vk_enter)) {
	if (ds_list_find_index(input_ls,"ARRW") == -1) {
		player = instance_create_layer(char_spr_x_2,char_spr_y_1,"Players_layer",obj_select_player);
		player.player_index = ds_list_size(player_ls);
		player.input_method = 1;
		ds_list_add(player_ls,player);
		ds_list_add(input_ls,"ARRW");
		player_amount ++;
	}
}

if (gamepad_button_check_pressed(0,gp_face1)) {
	if (ds_list_find_index(input_ls,"GMPD1") == -1) {
		player = instance_create_layer(char_spr_x_1,char_spr_y_1,"Players_layer",obj_select_player);
		player.player_index = ds_list_size(player_ls);
		player.input_method = 2;
		ds_list_add(player_ls,player);
		ds_list_add(input_ls,"GMPD1");
		player_amount ++;
	}
}

if (gamepad_button_check_pressed(1,gp_face1)) {
	if (ds_list_find_index(input_ls,"GMPD2") == -1) {
		player = instance_create_layer(char_spr_x_1,char_spr_y_1,"Players_layer",obj_select_player);
		player.player_index = ds_list_size(player_ls);
		player.input_method = 3;
		ds_list_add(player_ls,player);
		ds_list_add(input_ls,"GMPD2");
		player_amount ++;
	}
}

obj_parameters.input_method_ls = input_method_ls;
obj_parameters.player_index_ls = player_index_ls;
obj_parameters.character_ls = character_ls;
obj_parameters.role_ls = role_ls;

obj_parameters.player_amount = player_amount;