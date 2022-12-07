/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
c_lightgrey = make_color_rgb(230,230,230);
if (obj_time_manager.game_timer < 5 * room_speed) {
	if (obj_time_manager.game_timer % 15 > 7) {
		draw_text_color(20,20,"Remain time: " + string(game_timer),c_red,c_red,c_red,c_red,1);
	} else {
		draw_text_color(20,20,"Remain time: " + string(game_timer),c_lightgrey,c_lightgrey,c_lightgrey,c_lightgrey,1);
	}
} else if (obj_time_manager.game_timer >= 5 * room_speed) {
	if (obj_time_manager.game_timer % 60 > 50) {
		draw_text_color(20,20,"Remain time: " + string(game_timer),c_red,c_red,c_red,c_red,1);
	} else {
		draw_text_color(20,20,"Remain time: " + string(game_timer),c_lightgrey,c_lightgrey,c_lightgrey,c_lightgrey,1);
	}
	
}

