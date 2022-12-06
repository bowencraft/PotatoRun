/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if (input_method == 0) {
	skill_button_status = (keyboard_check(vk_space)) ? true : false;
	up_button = ord("W");
	left_button = ord("A");
	down_button = ord("S");
	right_button = ord("D");
	
} else if (input_method == 1) {
	skill_button_status = (keyboard_check(vk_enter)) ? true : false;
	up_button = vk_up;
	left_button = vk_left;
	down_button = vk_down;
	right_button = vk_right;
	
} else if (input_method == 2) {
	skill_button_status = (gamepad_button_check(0,gp_face1)) ? true : false;
	gamepad_ver = gamepad_axis_value(0, gp_axislv);
	gamepad_hor = gamepad_axis_value(0, gp_axislh);

} else if (input_method == 3) {
	skill_button_status = (gamepad_button_check(1,gp_face1)) ? true : false;
	gamepad_ver = gamepad_axis_value(1, gp_axislv);
	gamepad_hor = gamepad_axis_value(1, gp_axislh);
	
}

if (input_method == 0 ||input_method == 1) {
	if ((!skill_button_status) && !dizzy) {
		if (keyboard_check(up_button)) {
			v_speed = -player_spd;
		}
		if (keyboard_check(left_button)) {
			h_speed = -player_spd;
			image_xscale = -0.75;
		}
		if (keyboard_check(down_button)) {
			v_speed = player_spd;
		}
		if (keyboard_check(right_button)) {
			h_speed = player_spd;
			image_xscale = 0.75;
		}
	}
} else if (input_method == 2 ||input_method == 3) {
	if ((!skill_button_status) && !dizzy) {
		//show_debug_message(string(gamepad_ver) + ", " + string(gamepad_hor));
		if (abs(gamepad_ver) > 0.1) {
			v_speed = gamepad_ver *2;
		}
		if (abs(gamepad_hor) > 0.1) {
			h_speed = gamepad_hor *2;
		}
		
		if (gamepad_axis_value(0, gamepad_hor) < 0.1) {
			image_xscale = -1;
		} else if (gamepad_axis_value(0, gamepad_hor) > 0.1) {
			image_xscale = 1;
		}
	
	}
}


if (role == 1) {
	sprite_index = script_char(character);
	player_spd = 2.5;
	if (obj_time_manager.game_timer == 0) {
		// explode
		role = 2;
		instance_create_layer(x,y,"Assets",obj_exploded);
		//ds_list_delete(obj_gameroom_manager.alive_ls,self);
	}
} else if (role == 0) {
	sprite_index = script_char(character);
	player_spd = 2;
} else {
	sprite_index = ghost_sprite;
	player_spd = 2;
}



if (floors == 1){
	depth = -y;

} else {

	depth = - 1200 - y;
}

if (dizzy) {
	if (dizzy_timer > 0) {
		dizzy_timer --;
	} else {
		dizzy = false;
	}
}



if (h_speed != 0) {
	h_speed *= player_fric;
}
if (v_speed != 0) {
	v_speed *= player_fric;
}

if (floors == 1) {
	if (instance_place(x + h_speed,y,obj_collision)) {
		h_speed = 0;
	}

	if (instance_place(x,y + v_speed,obj_collision)) {
		v_speed = 0;
	}
} else if (floors == 2) {
	if (instance_place(x + h_speed,y,obj_collision2)) {
		h_speed = 0;
	}

	if (instance_place(x,y + v_speed,obj_collision2)) {
		v_speed = 0;
	}
}

if (instance_place(x,y,obj_floor2)) {
	floors = 2;
}
if (instance_place(x,y,obj_floor1)) {
	floors = 1;
}


x += h_speed;
y += v_speed;

if (role == 1) {
	if (skill_button_status && !dizzy) {
		if (!powering) {
			powering = true;
			power_object = instance_create_layer(x,y,(floors==1)?"Powers":"Powers_uplayer",obj_power01);
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
		//obj_time_manager.dizzy_timer = obj_time_manager.game_timer - shake_time;
		powering = false;	
		power_amount = 0;
		power_object = noone;
		
		if (potato != noone) {
			potato.role = 1;
			role = 0;
			
			potato.dizzy = true;
			potato.dizzy_timer = dizzy_time * room_speed;
			instance_create_layer(potato.x,potato.y,"Assets",obj_sign_change);
			potato = noone;
		}
	}
	
} else {
	if (skill_button_status && !dizzy) {
		if (!powering) {
			powering = true;
			power_object = instance_create_layer(x,y,(floors==1)?"Powers":"Powers_uplayer",obj_power02);
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
		//obj_time_manager.dizzy_timer = obj_time_manager.game_timer - shake_time;
		powering = false;	
		power_amount = 0;
		power_object = noone;
		
		if (potato != noone) {
			
			potato.dizzy = true;
			potato.dizzy_timer = dizzy_time * room_speed;
			
			instance_create_layer(potato.x,potato.y,"Assets",obj_bump);
			potato = noone;
		}
	}
}