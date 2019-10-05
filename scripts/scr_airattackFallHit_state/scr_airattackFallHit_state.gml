scr_GetInputs();

hspd = 0;
image_speed = .3;
sprite_index = spr_PlayerAirAttackFallHit;

if scr_animation_end()
{
	state = states.normal;
}


scr_collision();