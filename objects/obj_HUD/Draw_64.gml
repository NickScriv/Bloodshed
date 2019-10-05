if (room != menuScreen)
{
var hp_x = 8;
var hp_y = 8;
var hp_width = 198; 
var hp_height = 6;
if (instance_exists(obj_player))
{
	drawHP = lerp(drawHP,obj_player.hp, .2);
	drawMaxHP = obj_player.maxhp;
}
else
{
	drawHP = lerp(drawHP, 0, .2);
	hpPercent = drawHP;
}
var hpPercent = drawHP / drawMaxHP;
if (drawHP >= 0)
{
draw_rectangle_color(hp_x,hp_x, hp_x + (hp_width * hpPercent), hp_y + hp_height, c_green, c_green,c_green,c_green,false);
}
draw_line_width_color(hp_x - 1, hp_y - 1, hp_x + hp_width, hp_y - 1, 1, c_dkgray, c_dkgray);
draw_line_width_color(hp_x - 1, hp_y + hp_height, hp_x + hp_width, hp_y + hp_height, 1, c_dkgray, c_dkgray);
draw_line_width_color(hp_x-1, hp_y-1, hp_x-1, hp_y+hp_height, 1, c_dkgray, c_dkgray);
draw_line_width_color(hp_x + hp_width, hp_y - 1, hp_x + hp_width, hp_y + hp_height, 1, c_dkgray, c_dkgray);

if (!instance_exists(obj_player)) exit;
var text = "Kills: " + string(obj_player.kills);
var textWidth = string_width(text);
var textHeight = string_height(text);
var startX = 8;
var startY = 20;
var paddingX = 2;
var paddingY = 4;
draw_rectangle_color(startX, startY, startX + textWidth + paddingX, startY + textHeight + paddingY, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
draw_text(startX+paddingX/2,startY+paddingY, text);
}







