/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


if (obj_time_manager.game_timer < 5 * room_speed) {
	if (obj_time_manager.game_timer % 15 > 7) {
		
		c_textcolor = c_red;
	} else {
		
		c_textcolor = c_lightgrey;
	}
} else if (obj_time_manager.game_timer >= 5 * room_speed) {
	if (obj_time_manager.game_timer % 60 > 50) {
		
		c_textcolor = c_red;
	} else {
		c_textcolor = c_lightgrey;
	}
	
}

if (obj_time_manager.game_timer >= 0) {
	text ="Time Remain: " +  string(ceil(game_timer/room_speed)) ;
	text_width = string_width(text);
	draw_text_color(view_wport[0] /2 - text_width / 2 ,20,text,c_textcolor,c_textcolor,c_textcolor,c_textcolor,1);

}

draw_sprite(leave,0,0,view_hport[0] - 72);