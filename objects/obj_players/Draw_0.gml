/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if (dizzy) {
	if (dizzy_timer % 12 == 0) {
		dizzy_count ++;
	}
	draw_sprite_ext(d01,dizzy_count,x,y-12,1,1,0,c_white,1);
	
}else {
	dizzy_count = 0;
}

draw_self();

