if (room != menuScreen)
{
var viewID = view_camera[0];
var viewWidth = camera_get_view_width(viewID);
var viewHeight = camera_get_view_height(viewID);
display_set_gui_size(viewWidth, viewHeight);

if (!instance_exists(obj_player)) exit;
drawHP = obj_player.hp;
drawMaxHP = obj_player.maxhp;
draw_set_font(font1);
if (room == R1) 
{
		if (!audio_is_playing(a_music))
		{
		audio_play_sound(a_music, 4, true);
		}
}
if (room == R2)
{
	audio_stop_sound(a_music);
	if (!audio_is_playing(a_music_level2))
	{
	audio_play_sound(a_music_level2, 4, true);
	}
}

}