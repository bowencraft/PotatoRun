/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if (game_timer >= -240) {
	game_timer --;
} else {
	room_goto(Room_transition);
}

//if (dizzy_status) {
//	dizzy_status = false;
	
//	dizzy_timer -= dizzy_long;
//}

if (dizzy_status) {
	dizzy_status = false;
	
	show_debug_message("screenshaking!")
	var _fx_screenshake = fx_create("_filter_screenshake");
	fx_set_single_layer(_fx_screenshake, false);
	fx_set_parameter(_fx_screenshake, "g_Magnitude", 10);
	fx_set_parameter(_fx_screenshake, "g_ShakeSpeed", 0.5);
	layer_set_fx("Effect_1", _fx_screenshake);
	alarm[0] = 10;
	
}
//else {
	
//	layer_clear_fx("Effect_1");
//}


