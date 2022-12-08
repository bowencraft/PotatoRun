/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if (timer < times) {
	x += x_velocity;
	y += y_velocity;
	image_xscale -= 1/times;
	image_yscale -= 1/times;
	timer ++;
} else {
	instance_destroy(self);
}


