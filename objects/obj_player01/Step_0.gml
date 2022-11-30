/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

depth = -y;


if (role == 1) {
	sprite_index = outline_sprite;
	if (obj_time_manager.game_timer < 5 * room_speed) {
		if (obj_time_manager.game_timer % 15 > 7) {
			sprite_index = outline_sprite;
		} else {
			sprite_index = inline_sprite;
		}
	}
	if (obj_time_manager.game_timer == 0) {
		visible = false;
		instance_create_layer(x,y,"Assets",obj_exploded);
	}
	player_spd = 2.5;
} else {
	sprite_index = inline_sprite;
	player_spd = 2;
}




if (h_speed != 0) {
	h_speed *= player_fric;
}
if (v_speed != 0) {
	v_speed *= player_fric;
}

if (role != 1 || !keyboard_check(skill_button)) {
	if (keyboard_check(up_button)) {
		v_speed = -player_spd;
	}
	if (keyboard_check(left_button)) {
		h_speed = -player_spd;
		image_xscale = -1;
	}
	if (keyboard_check(down_button)) {
		v_speed = player_spd;
	}
	if (keyboard_check(right_button)) {
		h_speed = player_spd;
		image_xscale = 1;
	}
}



if (instance_place(x + h_speed,y,obj_collision)) {
	h_speed = 0;
}

if (instance_place(x,y + v_speed,obj_collision)) {
	v_speed = 0;
}

x += h_speed;
y += v_speed;

if (role == 1) {
	if (keyboard_check(skill_button)) {
		if (!powering) {
			powering = true;
			power_object = instance_create_layer(x,y,"Powers",obj_power01);
		} else {
			if (power_amount < 100) {
				power_amount ++;
			}
		}
		
		scale_var = (1 + 0.02* power_amount);
		
		power_object.image_xscale = scale_var;
		power_object.image_yscale = scale_var;
		
		potato = collision_ellipse(x-scale_var*18,y-scale_var*18,x+scale_var*18,y+scale_var*18,obj_players,0,true);
		
	} else {
		
		
		instance_destroy(power_object);
		powering = false;	
		power_amount = 0;
		power_object = noone;
		
		if (potato != noone) {
			potato.role = 1;
			role = 0;
			instance_create_layer(potato.x,potato.y,"Assets",obj_sign_change);
			potato = noone;
		}
	}
	
}