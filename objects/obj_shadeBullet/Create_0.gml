if (instance_exists(obj_player))
{
if ((obj_player.x - x) > 0)
				{
					image_xscale = 1;
					direction = 0;
				}
				else 
				{
					image_xscale = -1;
					direction = 180;
				}
}
damage = 5;
knockback = 1;