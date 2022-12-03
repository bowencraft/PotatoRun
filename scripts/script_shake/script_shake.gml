// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function axisShake(input,intensity,count,spd,instant_tick) {
	//show_debug_message(string(global.room_run_tick) + ", " + string(instant_tick) + ", " + string(count * spd));
	script_excute_time = global.room_run_tick - instant_tick;
	if (script_excute_time < (count * spd)) {
		output = input + sin(2 * pi * script_excute_time / spd) * intensity;
		//show_debug_message(output);
		return output;
	} else {
		return input;
	}
}