scr_GetInputs();


sprite_index = spr_swing2;
image_speed = attackingSpeed;
if (key_attack) && (image_index >= 4)
{
	image_index = 0;
	state = states.attack3;
}

if scr_animation_hit_frame(3)
{
	audio_play_sound(a_miss, 3, false);
	scr_create_hitbox(x, y, self, spr_swing2_damage, knockback2, 4, damage2, image_xscale);
}

if scr_animation_end()
{
	state = states.normal;
}


scr_collision();