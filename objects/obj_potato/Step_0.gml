/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

for (var i =0; i<ds_list_size(obj_gameroom_manager.alive_ls); i++) {
	if (obj_gameroom_manager.alive_ls[|i].role == 1) {
	
		potato_player = obj_gameroom_manager.alive_ls[|i];
		break;
	}
}

if (potato_player != -1) {
	sprite_index = potato_inline_sprite;
	if (obj_time_manager.game_timer < 5 * room_speed) {
		if (obj_time_manager.game_timer % 15 > 7) {
			sprite_index = potato_outline_sprite;
		} else {
			sprite_index = potato_inline_sprite;
		}
	} else {
		if (obj_time_manager.game_timer % 60 > 50) {
			sprite_index = potato_outline_sprite;
		} else {
			sprite_index = potato_inline_sprite;
		}
	
	}
	if (obj_time_manager.game_timer == 0) {
		// explode
		role = 2;
		instance_create_layer(x,y,"Assets",obj_exploded);
	}
	
	x = lerp(x,potato_player.x,0.7);
	y = lerp(y,potato_player.y-8,0.7);
} else {
	visible = false;
}



depth = -y+32;

