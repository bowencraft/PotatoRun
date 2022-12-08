/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
randomize();	

player_index_ls = obj_parameters.player_index_ls;
character_ls = obj_parameters.character_ls;
role_ls = obj_parameters.role_ls;

player_amount = obj_parameters.player_amount;

plr_sprite_size = 96;
plr_sprite_scale = 4;

plr_axis_x1 = 140;
plr_axis_x2 = 400;

plr_axis_y1 = 340;
plr_axis_y2 = 515;

image_frame = 0;
room_run_tick = 0;

choose_map_index = obj_parameters.choose_map_index;
choose_map = noone;
choose_map_sprite = noone;

map_timer = 0;
map_interval = 0;
map_count = 10;
map_counter = 0;

randoming = true;

// transition_ fade in

show_debug_message("transition_ fade in");
obj_fade.fade_in = true;
obj_fade.fade_in_duration = 30;