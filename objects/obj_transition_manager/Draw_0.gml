/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

room_run_tick ++;

draw_self();

if (room_run_tick % 10 == 0) {
	if (image_frame == 4) {
		image_frame = 0;
	
	} else {
	
		image_frame ++;
	}
}

if (player_amount > 0) {
	draw_sprite_ext(script_char(character_ls[|0]),image_frame,plr_axis_x1,plr_axis_y1,plr_sprite_scale,plr_sprite_scale,0,c_white,1);
	
	text_width = string_width("P1");
	draw_text_color(plr_axis_x1 - text_width/2,plr_axis_y1,
	"P1", c_white,c_white,c_white,c_white,1);
	

}
if (player_amount > 1) {
	draw_sprite_ext(script_char(character_ls[|1]),image_frame,plr_axis_x2,plr_axis_y1,plr_sprite_scale,plr_sprite_scale,0,c_white,1);
	
	text_width = string_width("P2");
	draw_text_color(plr_axis_x2 - text_width/2,plr_axis_y1,
	"P2", c_white,c_white,c_white,c_white,1);

}
if (player_amount > 2) {
	draw_sprite_ext(script_char(character_ls[|2]),image_frame,plr_axis_x1,plr_axis_y2,plr_sprite_scale,plr_sprite_scale,0,c_white,1);
	
	text_width = string_width("P3");
	draw_text_color(plr_axis_x1 - text_width/2,plr_axis_y2,
	"P3", c_white,c_white,c_white,c_white,1);

}
if (player_amount > 3) {
	draw_sprite_ext(script_char(character_ls[|3]),image_frame,plr_axis_x2,plr_axis_y2,plr_sprite_scale,plr_sprite_scale,0,c_white,1);
	
	text_width = string_width("P4");
	draw_text_color(plr_axis_x2 - text_width/2,plr_axis_y2,
	"P3", c_white,c_white,c_white,c_white,1);

}

draw_sprite(choose_map_sprite,0,618,267);




