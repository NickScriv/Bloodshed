draw_self();
if (state == "death") exit;
if (alarm[0] > 0)
{
	var heigth = sprite_height - sprite_yoffset;
	draw_rectangle_color(x-12,y-heigth, x-12+(hp/maxhp)*24, y-(heigth-2), c_green, c_green, c_green, c_green, false); 
	draw_sprite(spr_enemyHealthBar, 0, x-12, y-heigth);
}