/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if (fade_in) {
	//show_debug_message("fading in...")
	fade_in = false;
	fade_in_status = true;
	fade_out_status = false;
	opacity = 100;
	
}

if (fade_in_status) {

	//show_debug_message("fading in...")
	if (opacity > 0) {
		opacity -= 100/fade_in_duration;
	} else {
		fade_in_status = false;
	}
}


if (fade_out) {
	//show_debug_message("fading out...")
	fade_out = false;
	fade_in_status = false;
	fade_out_status = true;
	opacity = 0;
	
}

if (fade_out_status == true) {
	//show_debug_message("fading out 1...")
	

	if (opacity < 100) {
		opacity += 100/fade_out_duration;
	} else {
		fade_out_status = false;
	}
}



