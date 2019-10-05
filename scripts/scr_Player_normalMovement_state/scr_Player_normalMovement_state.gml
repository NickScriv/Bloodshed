scr_GetInputs();
if (key_attack) && (place_meeting(x,y+1,obj_wall)) && (!jump)
{

	image_index = 0;
	state = states.attack;
}

if (key_attack) && (vspd != 0) 
{
	image_index = 0;
	state = states.airattack;
}
countRestart = 30;


  




if (key_right)
{
hspd += 1
}
if (key_left)
{
hspd -= 1
}
if (!key_right) && (!key_left)
{
    hspd -= sign(hspd);
}
if (key_right) && (key_left)
{
    hspd = 0;
}

hspd = clamp(hspd, -maxhspd, maxhspd);
movedirection = key_right - key_left;



//gravity
if (!place_meeting(x,y+1,obj_wall))
{
    vspd += grav;
}


// jumping
if (place_meeting(x,y+1,obj_wall))
{
    numberofjumps = maxjumps;   
}
if (jump) && (numberofjumps > 0)
{
    numberofjumps -= 1;
    vspd = jump * -jumpspd;
}

if (vspd != 0) && (key_down)
{
	vspd = 16;
}
// vertical movement


//Aninmation
if (movedirection != 0) && (place_meeting(x,y+1,obj_wall))
{
	image_speed = .8;
    image_xscale = movedirection;
    sprite_index = spr_playerRun;
	if (scr_animation_hit_frame(1)) || (scr_animation_hit_frame(3))
	{
		audio_play_sound(a_footstep, 2, false);
	}
}
else
{
	image_speed = 3;
    sprite_index = spr_Player;
}

if (sign(vspd) > 0)
{
	if (movedirection != 0)
	{
	image_xscale = movedirection;
	}
    sprite_index = spr_playerFall;
}
if (sign(vspd) < 0) 
{
	if (movedirection != 0)
	{
	image_xscale = movedirection;
	}
    sprite_index = spr_playerJump;
}
if (key_down) && (place_meeting(x,y+1,obj_wall)) && (movedirection == 0)
{
	image_speed = .8;
	sprite_index = spr_crouch
}
scr_collision();