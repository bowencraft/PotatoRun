/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

player_index = 0;
input_method = 0;


character = 15; // skin
role = 1; // 1=potato, 0=human, 2=ghost

player_spd = 2;
player_fric = 0.7;

h_speed = 0;
v_speed = 0;

floors = 1;

powering = false;
power_amount = 0;

dizzy_time = 1;
dizzy = false;
dizzy_timer = 0;
dizzy_count = 0;

power_object = noone;
potato = noone;

potato_inline_sprite = spr_player01;
potato_outline_sprite = spr_player01_outline;

ghost_sprite = creature_ghost;

shake_time = 60;
image_xscale = 0.75;
image_yscale = 0.75;
