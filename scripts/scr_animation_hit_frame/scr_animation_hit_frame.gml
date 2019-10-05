///@arg frame
var frame = argument0;
var frameRange = image_speed * sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps);
return image_index >= frame && image_index < frame+frameRange;