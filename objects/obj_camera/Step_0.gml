x += random_range(-screenShake, screenShake);
y += random_range(-screenShake, screenShake);

if (!instance_exists(obj_player)) exit;
var targetX = obj_player.x 
var targetY = obj_player.y 
show_debug_message(screenShake);

x = lerp(x,targetX, .2);
y = lerp(y,targetY - 37, .2);

camera_set_view_pos(view_camera[0], x - width/2,y-height/2);

