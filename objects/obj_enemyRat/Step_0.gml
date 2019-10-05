hspd = dir * movespeed;
vspd += grav;

//vertical collsion
if(place_meeting(x,y+vspd,obj_wall))
{
    while (!place_meeting(x,y+sign(vspd),obj_wall))
    {
        y+=sign(vspd);
    }
    vspd = 0;
	
}
// vertical movement
y += vspd;

if(place_meeting(x+hspd,y,obj_wall))
{
    while (!place_meeting(x+sign(hspd),y,obj_wall))
    {
        x+=sign(hspd);
    }
    hspd = 0;
	dir *= -1;
	
}
// horizontal movement
x += hspd;
image_xscale = dir;


















