//gravity
if (!place_meeting(x,y+1,obj_wall))
{
     vspeed = 7;
}
//vertical collsion
if(place_meeting(x,y+vspeed,obj_wall))
{
    while (!place_meeting(x,y+sign(vspeed),obj_wall))
    {
        y+=sign(vspeed);
    }
    vspeed = 0;
}

switch (state)
{
	case "chase":
		#region Chase
		scr_set_sprite(spr_golemRun, .8, 0);
		if (!instance_exists(obj_player))
		{
			scr_set_sprite(spr_GolemIdle,.8,0);
			break;
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
		#endregion 
		break;
	case "Idle":
		scr_set_sprite(spr_GolemIdle,.8,0);
		break;
	case "attack":
		#region attack	
		scr_set_sprite(spr_golemAttack, attackingSpeed, 0);
		if (scr_animation_hit_frame(3))
		{
			scr_create_hitbox(x, y, self, spr_golemAttackDamage, 4, 4, 20, image_xscale);
		}
		if scr_animation_end()
		{
			state = "chase";
		}
		#endregion
		break;
	case "knockback":
		#region knockback
		scr_KnockbackState(spr_golemHurt, .25, "chase");
		
		#endregion
		break;
	case "death":
	#region death
	scr_death_state(spr_golemDie, .5);
	
	#endregion
	break;	
	default: 
		show_debug_message("State "+state+" does not exist");
		state = "chase";
		break;
		
}