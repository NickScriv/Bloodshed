event_inherited();
state = "chase";
hp = 1;
maxhp = hp;
image_speed =.5;
hspeed = random_range(2,3);
if (instance_exists(obj_player))
{
	hspeed *= sign(obj_player.x - x);
}
image_xscale = sign(hspeed);
damage = 3;
attacked = false;
knockback = 4;
attackRange = 40;