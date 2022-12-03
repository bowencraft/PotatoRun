/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 



char_origin_x = room_width / 2;
char_origin_y = 300;
x_intervel = 32;
y_intervel = 32;
sprite_size = 64;
sprite_scale = 4;

input_ls = ds_list_create();
player_ls = ds_list_create();

player_amount = 0;

/** ---
players join & select
- input method: 0 - WASD 1 - ARRW 2 - GMPD0 3 - GMPD1 4 - AI
- player max: 4
--- **/

plr_origin_x = room_width / 2;
plr_origin_y = 80;
plr_interval_2 = 64;
plr_interval_3 = 48;
plr_interval_4 = 32;

plr_sprite_size = 96;
plr_sprite_scale = 6;



/** ---
character placement 
- characters[0] size: 5
- characters size: 3
- sel range: x - 0-2 y - 0-4
--- **/
characters[0][0] = 1;
characters[0][1] = 2;
characters[0][2] = 3;
characters[0][3] = 4;
characters[0][4] = 5;
characters[1][0] = 6;
characters[1][1] = 7;
characters[1][2] = 8;
characters[1][3] = 9;
characters[1][4] = 10;
characters[2][0] = 11;
characters[2][1] = 12;
characters[2][2] = 13;
characters[2][3] = 14;
characters[2][4] = 15;

char_spr_x_1 = char_origin_x - 2 * x_intervel - 2.5 * sprite_size;
char_spr_x_2 = char_origin_x - 1 * x_intervel - 1.5 * sprite_size;
char_spr_x_3 = char_origin_x - 0.5 * sprite_size;
char_spr_x_4 = char_origin_x + 1 * x_intervel + 0.5 * sprite_size;
char_spr_x_5 = char_origin_x + 2 * x_intervel + 1.5 * sprite_size;

char_spr_y_1 = char_origin_y;
char_spr_y_2 = char_origin_y + sprite_size + y_intervel;
char_spr_y_3 = char_origin_y + 2 * sprite_size + 2 * y_intervel;

global.room_run_tick = 0;