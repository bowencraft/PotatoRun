/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


cam_width = lerp(cam_width, abs(obj_player02.x-obj_player01.x)/4 + 400, 0.05);
cam_height = cam_width / 1.6;
camera_set_view_size(view_camera[0],cam_width,cam_height);

x = lerp(x,(obj_player01.x + obj_player02.x)/2 ,0.1);
y = lerp(y,(obj_player01.y + obj_player02.y)/2 ,0.1);



