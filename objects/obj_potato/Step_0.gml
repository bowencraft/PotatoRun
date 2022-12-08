/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

for (var i =0; i<ds_list_size(obj_gameroom_manager.alive_ls); i++) {
	if (obj_gameroom_manager.alive_ls[|i].role == 1) {
		
		visible = true;
		potato_player = obj_gameroom_manager.alive_ls[|i];
		break;
	} else if (obj_gameroom_manager.alive_ls[|i].role == 2) {
		
		visible = false;
	}
}
//show_debug_message(potato_player);

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
	//if (obj_time_manager.game_timer == 0) {
	//	// explode
	//	show_debug_message("exploded");
	//	role = 2;
	//	instance_create_layer(x,y,"Assets",obj_exploded);
		
	//}
	
	x = lerp(x,potato_player.x,0.7);
	y = lerp(y,potato_player.y - 10,0.7);
} else {
	visible = false;
}


if (potato_player.floors == 1){
	depth = -y+32;

} else {

	depth = - 1200 - y+32;
}

