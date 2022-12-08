/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

persistent = true;

input_method_ls = ds_list_create();
player_index_ls = ds_list_create();
character_ls = ds_list_create();
role_ls = ds_list_create();

player_amount = 0;
choose_map_index = 0;

randomize();
maps_ls = ds_list_create();
ds_list_add(maps_ls,0,1,2,3,4);
ds_list_shuffle(maps_ls);