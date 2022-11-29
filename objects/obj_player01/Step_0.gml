/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if (h_speed != 0) {
	h_speed *= player_fric;
}
if (v_speed != 0) {
	v_speed *= player_fric;
}


if (keyboard_check(ord("W"))) {
	v_speed = -player_spd;
}
if (keyboard_check(ord("A"))) {
	h_speed = -player_spd;
}
if (keyboard_check(ord("S"))) {
	v_speed = player_spd;
}
if (keyboard_check(ord("D"))) {
	h_speed = player_spd;
}


if (instance_place(x + h_speed,y,obj_collision)) {
	h_speed = 0;
}

if (instance_place(x,y + v_speed,obj_collision)) {
	v_speed = 0;
}

x += h_speed;
y += v_speed;
