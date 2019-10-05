switch (state)
{
	case "chase":
		if (!instance_exists(obj_player))
		{
			break;
		}
		var distanceToPlayer = point_distance(x,y,obj_player.x,obj_player.y);
		if (distanceToPlayer <= attackRange) 
			{
				image_xscale = sign(obj_player.x - x);
				sprite_index = spr_waspAttack;		
			}
			else
			{
				image_xscale = sign(hspeed);
				sprite_index = spr_enemyWaspMove;
			}
		
		if(place_meeting(x,y,obj_player)) && (attacked == false) 
		{
			scr_create_hitbox(x,y,self, sprite_index, knockback, 1, damage, image_xscale)
			attacked = true;
		}  
		if (attacked == true)
		{
			hspeed = .5;
			vspeed = -4;
			sprite_index = spr_enemyWaspMove;
		}
		
		
	
		break;
	case "death":
	#region death
	scr_death_state(wasp_die, .5);
	
	#endregion
	break;
}

	
