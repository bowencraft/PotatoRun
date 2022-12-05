/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if (game_timer >= 0) {
	game_timer --;
}





if (game_timer > dizzy_timer) {
	var _fx_screenshake = fx_create("_filter_screenshake");
	fx_set_single_layer(_fx_screenshake, false);
	fx_set_parameter(_fx_screenshake, "g_Magnitude", 10);
	fx_set_parameter(_fx_screenshake, "g_ShakeSpeed", 0.5);
	layer_set_fx("Effect_1", _fx_screenshake);
	
} else {

	layer_clear_fx("Effect_1");
}


