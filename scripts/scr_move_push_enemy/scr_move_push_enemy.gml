// horizontal collision
if(place_meeting(x+hspdPush,y,obj_wall))
{
    while (!place_meeting(x+sign(hspdPush),y,obj_wall))
    {
        x+=sign(hspdPush);
    }
    hspdPush = 0;
}
x += hspdPush;
//vertical collsion
if(place_meeting(x,y+vspdPush,obj_wall))
{
    while (!place_meeting(x,y+sign(vspdPush),obj_wall))
    {
        y+=sign(vspdPush);
    }
    vspdPush = 0;
}
y += vspdPush;