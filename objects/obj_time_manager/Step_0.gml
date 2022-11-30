/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if (game_timer >= 0) {
	game_timer --;
}

if ( !window_get_fullscreen() )
{
    if ( window_get_width() != global.Window_Width ||
         window_get_height() != global.Window_Height )
    {
        show_debug_message("window manually resized")
   
        view_wport[0] = window_get_width()
        view_hport[0] = window_get_height()
		surface_resize(application_surface, view_wport[0], view_hport[0]);
		
   
        global.Window_Width = window_get_width()
        global.Window_Height = window_get_height()
    }
}