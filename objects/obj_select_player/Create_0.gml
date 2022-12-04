/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


/** ---
players join & select
- input method: 0 - WASD 1 - ARRW 2 - GMPD0 3 - GMPD1 4 - AI
- sel range: x - 0-2 y - 0-4
--- **/

player_index = 0;
input_method = 0;

sel_x = 0; // 0-2
sel_y = 0; // 0-4

ready_status = false;

controller_cooldown = 0.15;

box_scale = 32;
box_goal_scale = 8;

/** ---
shake config
--- **/

shake_intensity = 6;
shake_speed = room_speed/10;


/** ---
character placement 
- characters[0] size: 5
- characters size: 3
--- **/

characters = obj_select_room.characters;
sprite_size = obj_select_room.sprite_size;

char_spr_x_1 = obj_select_room.char_spr_x_1;
char_spr_x_2 = obj_select_room.char_spr_x_2;
char_spr_x_3 = obj_select_room.char_spr_x_3;
char_spr_x_4 = obj_select_room.char_spr_x_4;
char_spr_x_5 = obj_select_room.char_spr_x_5;

char_spr_y_1 = obj_select_room.char_spr_y_1;
char_spr_y_2 = obj_select_room.char_spr_y_2;
char_spr_y_3 = obj_select_room.char_spr_y_3;

sel = 15;
box_x = char_spr_x_1;
box_y = char_spr_y_1;

box_goal_x = char_spr_x_1;
box_goal_y = char_spr_y_1;

instant_tick_x = 0;
instant_tick_y = 0;

x_intensity = 0;
y_intensity = 0;

controller_timer1 = 0;
controller_timer2 = 0;

