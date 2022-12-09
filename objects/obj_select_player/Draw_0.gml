/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

//draw_set_alpha(0.4);
//draw_rectangle_color(box_x - box_scale + box_offset_x, box_y -box_scale + box_offset_y, box_x + sprite_size + box_scale +box_offset_x, box_y + sprite_size + box_scale + box_offset_y,c_white,c_white,c_white,c_white,false);


x1 = box_x - box_scale + box_offset_x;
y1 = box_y -box_scale + box_offset_y;
x2 = box_x + sprite_size + box_scale +box_offset_x;
y2 = box_y + sprite_size + box_scale + box_offset_y;

draw_sprite_stretched(sel_box,0,x1, y1,x2-x1,y2-y1);
draw_set_alpha(1);

