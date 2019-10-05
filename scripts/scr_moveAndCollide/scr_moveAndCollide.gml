///@arg Xspeed
///@arg Yspeed
var xspeed = argument0;
var yspeed = argument1;
if place_meeting(x + xspeed,y, obj_wall)
{
	while (!place_meeting(x + sign(xspeed),y,obj_wall))
    {
        x += sign(xspeed);
    }
	xspeed = 0;
}
x += xspeed;

if place_meeting(x,y + yspeed, obj_wall)
{
	while (!place_meeting(x,y + sign(yspeed),obj_wall))
    {
        y += sign(yspeed);
    }
	yspeed = 0;
}
y += yspeed;