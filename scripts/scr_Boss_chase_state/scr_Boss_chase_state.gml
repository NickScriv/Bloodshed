if (!instance_exists(obj_player))
		{
			exit;
		}
		
		var facingDirection = image_xscale;
		var distanceToPlayer = point_distance(x,y,obj_player.x,obj_player.y);
		if (distanceToPlayer <= attackRange) && (distanceToPlayer > backupRange)
		{
			state = "attack";		
		}
		if (distanceToPlayer > attackRange)
		{
			image_xscale = sign(obj_player.x - x);
			if (image_xscale == 0)
			{
				image_xscale = 1;
			}
			scr_moveAndCollide(facingDirection * chaseSpeed, 0);
		}
		if (distanceToPlayer <= backupRange)
		{
			if (facingDirection != sign(obj_player.x - x))
			{
				image_xscale = sign(obj_player.x - x);
				if (image_xscale == 0)
				{
					image_xscale = 1;
				}
			}
				
			scr_moveAndCollide(-facingDirection*chaseSpeed,0);
		}