scr_GetInputs();
scr_collision();
hspd = 0;
sprite_index = spr_swing1;
image_speed = attackingSpeed;
if (key_attack) && (image_index >= 3)
{
	image_index = 0;
	state = states.attack2;
}

if scr_animation_hit_frame(2)
{
	audio_play_sound(a_miss, 3, false);
	scr_create_hitbox(x, y, self, spr_swing1_damage, knockback1, 4, damage1, image_xscale);
}

if scr_animation_end()
{
	state = states.normal;
}
