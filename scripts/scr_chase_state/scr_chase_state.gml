if (!instance_exists(obj_player))
		{
			exit;
		}
		image_xscale = sign(obj_player.x - x);
		if (image_xscale == 0)
		{
			image_xscale = 1;
		}
		var facingDirection = image_xscale;
		var distanceToPlayer = point_distance(x,y,obj_player.x,obj_player.y);
		if (distanceToPlayer <= attackRange)
		{
			state = "attack";		
		}
		else
		{
			scr_moveAndCollide(facingDirection * chaseSpeed, 0);
		}