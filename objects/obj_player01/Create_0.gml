/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
player_spd = 2;
player_fric = 0.7;

h_speed = 0;
v_speed = 0;

powering = false;
power_amount = 0;

dizzy = false;
dizzy_timer = 0;

power_object = noone;
potato = noone;

role = 1; // 1=potato, 0=human

skill_button = ord("E");
up_button = ord("W");
left_button = ord("A");
down_button = ord("S");
right_button = ord("D");

inline_sprite = spr_player01;
outline_sprite = spr_player01_outline;
