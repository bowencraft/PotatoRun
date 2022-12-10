/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if (game_timer >= -300) {
	game_timer --;
} else {
	room_goto(Room_transition);
}

if (game_timer == 30 * room_speed) {
	//audio_stop_sound(dungeon_slower);
	//audio_play_sound(dungeon_boss,0,true);
}

if (game_timer == -240) {

	// transition_ fade out
	
	show_debug_message("transition_ fade out");
	obj_fade.fade_out = true;
	obj_fade.fade_out_duration = 60;
	
}

//if (dizzy_status) {
//	dizzy_status = false;
	
//	dizzy_timer -= dizzy_long;
//}

if (dizzy_status) {
	dizzy_status = false;
	
	//show_debug_message("screenshaking!")
	var _fx_screenshake = fx_create("_filter_screenshake");
	fx_set_single_layer(_fx_screenshake, false);
	fx_set_parameter(_fx_screenshake, "g_Magnitude", dizzy_magn);
	fx_set_parameter(_fx_screenshake, "g_ShakeSpeed", 0.5);
	layer_set_fx("Effect_1", _fx_screenshake);
	alarm[0] = dizzy_long;
	
}
//else {
	
//	layer_clear_fx("Effect_1");
//}

if (game_timer == -1) {
	obj_time_manager.dizzy_status = true;
	obj_time_manager.dizzy_magn = 10;
	
	audio_play_sound(pixel_explosion,0,false);
	
	for (var i =0;i < obj_parameters.player_amount; i++) {
		player = obj_gameroom_manager.alive_ls[|i];
		if (player.role != 2) {
			obj_parameters.score_ls[|i] ++;
		} else {
			potato_player = obj_gameroom_manager.alive_ls[|i];
		
		}
	}
	
	//audio_stop_sound(dungeon_boss);
	//audio_play_sound(dungeon_slower,0,true);
}
