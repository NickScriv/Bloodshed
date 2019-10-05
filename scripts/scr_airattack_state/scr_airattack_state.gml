scr_GetInputs();
//gravity
if (!place_meeting(x,y+1,obj_wall))
{
    vspd += grav;
}

image_speed = .5;
sprite_index = spr_PlayerAirAttack;

if scr_animation_hit_frame(1)
{
	audio_play_sound(a_miss, 3, false);
	scr_create_hitbox(x, y, self, spr_PlayerAirAttack_damage, 4, 1, 1, image_xscale);
}

if scr_animation_end()
{
	state = states.normal;
}

scr_collision();