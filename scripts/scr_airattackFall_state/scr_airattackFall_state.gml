scr_GetInputs();

//gravity
if (!place_meeting(x,y+1,obj_wall))
{
    vspd += grav;
}
image_speed = 6;
sprite_index = spr_PlayerAirAttackFallLoop;

if scr_animation_hit_frame(0) || scr_animation_hit_frame(1)
{
	scr_create_hitbox(x + 3, y + 8, self, spr_PlayerAirAttackFallLoop_damage, 4, 1, 1, image_xscale);
}

if scr_animation_end() && (place_meeting(x,y + 10,obj_wall))
{
	state = states.airattackfallhit;;
}	


scr_collision();