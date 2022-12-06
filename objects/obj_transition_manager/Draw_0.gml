/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


if (player_amount > 0) {
	draw_sprite_ext(script_char(character_ls[|0]),0,plr_axis_x1,plr_axis_y1,plr_sprite_scale,plr_sprite_scale,0,c_white,1);
	
	text_width = string_width("P1");
	draw_text_color(plr_axis_x1 - text_width/2,plr_axis_y1,
	"P1", c_white,c_white,c_white,c_white,1);
	

}








