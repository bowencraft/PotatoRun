/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
draw_set_font(font_pixel_mini_ingame);

text_width = string_width("P" + string(player_index + 1));
	draw_text_color(x - text_width/2,y-1,
	"P" + string(player_index + 1),c_white,c_white,c_white,c_white,1);

if (dizzy) {
	if (dizzy_timer % 12 == 0) {
		dizzy_count ++;
	}
	draw_sprite_ext(d01,dizzy_count,x,y-12,1,1,0,c_white,1);
	
}else {
	dizzy_count = 0;
}


draw_self();

draw_set_font(font_pixel_mini);
