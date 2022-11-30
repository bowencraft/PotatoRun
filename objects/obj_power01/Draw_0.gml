/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

	draw_sprite(spr_bar_bg,0,x-8,y-20);
	//scale_var = (1 + 0.02* power_amount);
	draw_sprite_ext(spr_bar_green,0,x-8,y-20,(image_xscale - 1)/2,1,0,c_white,1);
	
	draw_self();



