/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

x_total = 0;
y_total = 0;
plr_num = instance_number(obj_players);

cam_min_x = 10000;
cam_min_y = 10000;
cam_max_x = -1;
cam_max_y = -1;

for (var i =0;i<instance_number(obj_players);i++) {
	temp_plr = instance_find(obj_players,i);
	x_total += temp_plr.x;
	y_total += temp_plr.y;
	
	if (temp_plr.x < cam_min_x) cam_min_x = temp_plr.x;
	if (temp_plr.x > cam_max_x) cam_max_x = temp_plr.x;
	if (temp_plr.y < cam_min_y) cam_min_y = temp_plr.y;
	if (temp_plr.y > cam_max_y) cam_max_y = temp_plr.y;
	
}

cam_width = lerp(cam_width, min(280,max(cam_max_x - cam_min_x, cam_max_y - cam_min_y)) / 1.5 + 400, 0.05);
show_debug_message(string(cam_max_x - cam_min_x) + ", " + string(cam_max_y - cam_min_y))
cam_height = cam_width / 1.6;
camera_set_view_size(view_camera[0],cam_width,cam_height);

x = lerp(x,x_total/plr_num,0.1);
y = lerp(y,y_total/plr_num ,0.1);



