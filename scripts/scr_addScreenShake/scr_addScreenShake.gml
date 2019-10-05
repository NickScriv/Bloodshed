/// @arg intensity
/// @arg duration

var intensity = argument0;
var duration = argument1;

if (!instance_exists(obj_camera)) exit;

with (obj_camera)
{
	screenShake = intensity;
	alarm[0] = duration;
}

