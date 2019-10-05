scr_GetInputs();

image_speed = attackingSpeed;
sprite_index = spr_swing3;



if scr_animation_hit_frame(2)
{
	audio_play_sound(a_miss, 3, false);
	scr_create_hitbox(x, y, self, spr_swing3_damage, knockback3, 4, damage3, image_xscale);
}


if scr_animation_end()
{
	state = states.normal;
}




scr_collision();