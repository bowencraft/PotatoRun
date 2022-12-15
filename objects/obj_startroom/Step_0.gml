/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if (timer <time_long) {
	timer ++;
}

if (timer > 30 && timer < 60) {
	image_alpha += (1/30);
}

//if (timer > 240) {
//	image_alpha -= (1/30);
//}


if (timer == 315) {
	
	show_debug_message("transition_ fade out");
	obj_fade.fade_out = true;
	obj_fade.fade_out_duration = 15;
}

if (timer == 330) {
	room_goto(Room_playerSelect);
	audio_stop_all();
	audio_play_sound(dungeon_boss,0,true);

}