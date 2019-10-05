draw_set_font(font2)
drawX = camera_get_view_x(view_camera[0]) + ((camera_get_view_width(view_camera[0])/2)-78);
drawY = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2);
audio_stop_sound(a_music_level2);
if (!audio_is_playing(a_victory))
{
	audio_play_sound(a_victory, 4, true);
}