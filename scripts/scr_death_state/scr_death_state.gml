/// @arg deathSprite
/// @arg spriteSpeed
var spriteSpeed = argument[1];
var deathSprite = argument[0];
scr_set_sprite( deathSprite, spriteSpeed,0);
friction = true;
if (image_index >= image_number - 1)
{
	image_index = image_number - 1;
	image_speed = 0;
	if (image_alpha > 0)
	{
		image_alpha -= .1;
	}
	else
	{
		instance_destroy();
	}
}

scr_moveAndCollide(knockBackSpeed,0);
var knockbackfriction = .3;
knockBackSpeed = scr_approach(knockBackSpeed, 0, knockbackfriction);