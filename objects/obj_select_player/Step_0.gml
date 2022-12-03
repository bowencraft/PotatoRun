/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

// input method


if (input_method == 0) {

	if (keyboard_check_pressed(vk_space)) {
		if (!ready_status) {
			ready_status = true;
		}
	}
	
	if (keyboard_check_pressed(ord("Q"))) {
		if (ready_status) {
			ready_status = false;
		} else {
			
			temp_index = ds_list_find_index(obj_select_room.player_ls,self);
			ds_list_delete(obj_select_room.player_ls,temp_index);
			
			temp_index = ds_list_find_index(obj_select_room.input_ls,"WASD");
			ds_list_delete(obj_select_room.input_ls,temp_index);
			
			obj_select_room.player_amount --;
			instance_destroy(self);
			
		}
	}
	
	
	if (keyboard_check_pressed(ord("W"))) {
		if (!ready_status) {
			if (sel_x > 0) {
				sel_x --;
			} else {
				y_intensity = -shake_intensity;
				instant_tick_y = global.room_run_tick;
			}
		}
	}
	
	if (keyboard_check_pressed(ord("S"))) {
		if (!ready_status) {
			if (sel_x < 2) {
				sel_x ++;
			} else {
				y_intensity = shake_intensity;
				instant_tick_y = global.room_run_tick;
			}
		}
	}
	
	if (keyboard_check_pressed(ord("A"))) {
		if (!ready_status) {
			if (sel_y > 0) {
				sel_y --;
			} else {
				x_intensity = -shake_intensity;
				instant_tick_x = global.room_run_tick;
			}
		}
	}
	if (keyboard_check_pressed(ord("D"))) {
		if (!ready_status) {
			if (sel_y < 4) {
				sel_y ++;
			} else {
				x_intensity = shake_intensity;
				instant_tick_x = global.room_run_tick;
			}
		}
	}
} else if (input_method == 1) {

	if (keyboard_check_pressed(vk_enter)) {
		if (!ready_status) {
			ready_status = true;
		}
	}
	
	if (keyboard_check_pressed(vk_up)) {
		if (!ready_status) {
			if (sel_x > 0) {
				sel_x --;
			} else {
				y_intensity = -shake_intensity;
				instant_tick_y = global.room_run_tick;
			}
		}
	}
	
	if (keyboard_check_pressed(vk_down)) {
		if (!ready_status) {
			if (sel_x < 2) {
				sel_x ++;
			} else {
				y_intensity = shake_intensity;
				instant_tick_y = global.room_run_tick;
			}
		}
	}
	
	if (keyboard_check_pressed(vk_left)) {
		if (!ready_status) {
			if (sel_y > 0) {
				sel_y --;
			} else {
				x_intensity = -shake_intensity;
				instant_tick_x = global.room_run_tick;
			}
		}
	}
	if (keyboard_check_pressed(vk_right)) {
		if (!ready_status) {
			if (sel_y < 4) {
				sel_y ++;
			} else {
				x_intensity = shake_intensity;
				instant_tick_x = global.room_run_tick;
			}
		}
	}
} else if (input_method == 2) {

	if (gamepad_button_check_pressed(0,gp_face1)) {
		if (!ready_status) {
			ready_status = true;
		}
		show_debug_message("controller 0 get ready!");
	}
	
	if (gamepad_axis_value(0, gp_axislv) < -0.5) {
		//show_debug_message(gamepad_axis_value(0, gp_axislv));
		if (!ready_status) {
			if (controller_timer1 > 0) {
				controller_timer1 --;
			} else {
				controller_timer1 = controller_cooldown * room_speed;
				
				if (sel_x > 0) {
					sel_x --;
				} else {
					y_intensity = -shake_intensity;
					instant_tick_y = global.room_run_tick;
				}
			}
		}
	}
	
	if (gamepad_axis_value(0, gp_axislv) > 0.5) {
		if (!ready_status) {
			if (controller_timer1 > 0) {
				controller_timer1 --;
			} else {
				controller_timer1 = controller_cooldown * room_speed;
				
				if (sel_x < 2) {
					sel_x ++;
				} else {
					y_intensity = shake_intensity;
					instant_tick_y = global.room_run_tick;
				}
			}
		}
	}
	
	if (gamepad_axis_value(0, gp_axislh) < -0.5) {
		if (!ready_status) {
			if (controller_timer1 > 0) {
				controller_timer1 --;
			} else {
				controller_timer1 = controller_cooldown * room_speed;
				
				if (sel_y > 0) {
					sel_y --;
				} else {
					x_intensity = -shake_intensity;
					instant_tick_x = global.room_run_tick;
				}
			}
			
		}
	}
	if (gamepad_axis_value(0, gp_axislh) > 0.5) {
		if (!ready_status) {
			if (controller_timer1 > 0) {
				controller_timer1 --;
			} else {
				controller_timer1 = controller_cooldown * room_speed;
				
				if (sel_y < 4) {
					sel_y ++;
				} else {
					x_intensity = shake_intensity;
					instant_tick_x = global.room_run_tick;
				}
			}
		}
	}
} else if (input_method == 3) {
	
	if (gamepad_button_check_pressed(1,gp_face1)) {
		if (!ready_status) {
			ready_status = true;
		}
	}
	
	if (gamepad_axis_value(1, gp_axislv) < -0.5) {
		if (!ready_status) {
			if (controller_timer2 > 0) {
				controller_timer2 --;
			} else {
				controller_timer2 = controller_cooldown * room_speed;
				
				if (sel_x > 0) {
					sel_x --;
				} else {
					y_intensity = -shake_intensity;
					instant_tick_y = global.room_run_tick;
				}
			}
		}
	}
	
	if (gamepad_axis_value(1, gp_axislv) > 0.5) {
		if (!ready_status) {
			if (controller_timer2 > 0) {
				controller_timer2 --;
			} else {
				controller_timer2 = controller_cooldown * room_speed;
				
				if (sel_x < 2) {
					sel_x ++;
				} else {
					y_intensity = shake_intensity;
					instant_tick_y = global.room_run_tick;
				}
			}
		}
	}
	
	if (gamepad_axis_value(1, gp_axislh) < -0.5) {
		if (!ready_status) {
			if (controller_timer2 > 0) {
				controller_timer2 --;
			} else {
				controller_timer2 = controller_cooldown * room_speed;
				
				if (sel_y > 0) {
					sel_y --;
				} else {
					x_intensity = -shake_intensity;
					instant_tick_x = global.room_run_tick;
				}
			}
		}
	}
	if (gamepad_axis_value(1, gp_axislh) > 0.5) {
		if (!ready_status) {
			if (controller_timer2 > 0) {
				controller_timer2 --;
			} else {
				controller_timer2 = controller_cooldown * room_speed;
				
				if (sel_y < 4) {
					sel_y ++;
				} else {
					x_intensity = shake_intensity;
					instant_tick_x = global.room_run_tick;
				}
			}
		}
	}
}

// set selection & box x-y 

if (sel_x == 0) {
	box_goal_y = char_spr_y_1;
	if (sel_y == 0) {
		box_goal_x = char_spr_x_1;
		sel = 1;
	}
	else if (sel_y == 1) {
		box_goal_x = char_spr_x_2;
		sel = 2;
	}
	else if (sel_y == 2) {
		box_goal_x = char_spr_x_3;
		sel = 3;
	}
	else if (sel_y == 3) {
		box_goal_x = char_spr_x_4;
		sel = 4;
	}
	else if (sel_y == 4) {
		box_goal_x = char_spr_x_5;
		sel = 5;
	}
} else if (sel_x == 1) {
	box_goal_y = char_spr_y_2;
	if (sel_y == 0) {
		box_goal_x = char_spr_x_1;
		sel = 6;
	}
	else if (sel_y == 1) {
		box_goal_x = char_spr_x_2;
		sel = 7;
	}
	else if (sel_y == 2) {
		box_goal_x = char_spr_x_3;
		sel = 8;
	}
	else if (sel_y == 3) {
		box_goal_x = char_spr_x_4;
		sel = 9;
	}
	else if (sel_y == 4) {
		box_goal_x = char_spr_x_5;
		sel = 10;
	}
} else if (sel_x == 2) {
	box_goal_y = char_spr_y_3;
	if (sel_y == 0) {
		box_goal_x = char_spr_x_1;
		sel = 11;
	}
	else if (sel_y == 1) {
		box_goal_x = char_spr_x_2;
		sel = 12;
	}
	else if (sel_y == 2) {
		box_goal_x = char_spr_x_3;
		sel = 13;
	}
	else if (sel_y == 3) {
		box_goal_x = char_spr_x_4;
		sel = 14;
	}
	else if (sel_y == 4) {
		box_goal_x = char_spr_x_5;
		sel = 15;
	}
}


box_x = lerp(box_x,box_goal_x,0.2);
box_y = lerp(box_y,box_goal_y,0.2);

box_x = axisShake(box_x,x_intensity,1,shake_speed,instant_tick_x);
box_y = axisShake(box_y,y_intensity,1,shake_speed,instant_tick_y);


