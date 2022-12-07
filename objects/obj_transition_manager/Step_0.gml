/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


//temp_player = ds_list_find_value(player_ls,0);

if (choose_map_index == 0) {
	choose_map = PlayRoom_desert01;
	choose_map_sprite = pic_desert01;
} else if (choose_map_index == 1) {
	choose_map = PlayRoom_desert02;
	choose_map_sprite = pic_desert02;
} else if (choose_map_index == 2) {
	choose_map = PlayRoom_glacier01;
	choose_map_sprite = pic_glacier01;
} else if (choose_map_index == 3) {
	choose_map = PlayRoom_plain01;
	choose_map_sprite = pic_plain01;
} else if (choose_map_index == 4) {
	choose_map = PlayRoom_volcano01;
	choose_map_sprite = pic_valcano01;
}

if (randoming){
	if (map_counter < map_count) {
		if (map_timer < map_interval * 2) {
			map_timer ++;
		} else {
			if (choose_map_index < 5) {
				choose_map_index ++;
			} else {
				choose_map_index = 0;
			}
			map_timer = 0;
			map_interval ++;
			map_counter ++;
		}
	} else {
		choose_map_index = irandom(4);
		randoming = false;
		show_debug_message("Map choosed!");
		
		alarm[0] = 1 * room_speed;
	}
}
