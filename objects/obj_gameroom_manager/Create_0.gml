/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

show_debug_message("new room created!");

alive_ls = ds_list_create();

for (var i =0; i<ds_list_size(obj_parameters.player_amount); i++) {
	randomize();
	temp_pos = instance_find(obj_spawnpoint,irandom(instance_number(obj_spawnpoint) - 1));
	temp_plr = instance_create_layer(temp_pos.x,temp_pos.y,"Players",obj_players);
	instance_destroy(temp_pos);
	//obj_player = ds_list_find_value(obj_parameters.player_ls,i);
	//show_debug_message("gameroom: " + string(i) + ", " + string(obj_player));
	temp_plr.player_index = obj_parameters.player_index_ls[|i];
	temp_plr.input_method = obj_parameters.input_method_ls[|i];
	temp_plr.character = obj_parameters.character_ls[|i];
	temp_plr.role = obj_parameters.role_ls[|i];
	if (temp_plr.role != 2) {
		ds_list_add(alive_ls,temp_plr);
	}
	
}

potato_player = ds_list_find_value(alive_ls,irandom(ds_list_size(alive_ls) - 1));
potato_player.role = 1;

instance_create_layer(potato_player.x,potato_player.y-32,"Players",obj_potato);

show_debug_message("transition_ fade in");
obj_fade.fade_in = true;
obj_fade.fade_in_duration = 30;