///@arg Knockback_sprite
///@arg friction
///@arg Next_state

var knockback_sprite = argument0;
var next_state = argument2;
var knockbackfriction = argument1;  



scr_set_sprite(knockback_sprite, .25, 0);
image_xscale = -sign(knockBackSpeed);
scr_moveAndCollide(knockBackSpeed, 5);
 
knockBackSpeed = scr_approach(knockBackSpeed, 0, knockbackfriction);
if (knockBackSpeed == 0)
{
	state = next_state;
}
		
		
		