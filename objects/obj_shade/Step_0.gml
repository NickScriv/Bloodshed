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
		scr_set_sprite(spr_shadeMove, .5, 0);
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
		countdown--;
		if (distanceToPlayer <= attackRange) && (countdown <=0) 
		{
			countdown = countdownRate;
			state = "attack";		
		}
		else
		{
			scr_moveAndCollide(facingDirection * chaseSpeed, 0);
		}
		#endregion 
		break;
	case "attack":
		#region attack	
		scr_set_sprite(spr_shadeAttack, attackingSpeed, 0);
		if (scr_animation_hit_frame(4))
		{
			audio_play_sound(a_miss, 3, false);
			with (instance_create_layer(x,y,"Instances",obj_shadeBullet))
			{
				
				speed = 5;
			
			}
		}
		if scr_animation_end()
		{
			state = "chase";
		}
		#endregion
		break;
	case "knockback":
		#region knockback
		scr_KnockbackState(spr_shadeHurt, .25, "chase");
		
		#endregion
		break;
	case "death":
	#region death
	scr_death_state(spr_shadeDie, .5);
	
	#endregion
	break;
	default: 
		show_debug_message("State "+state+" does not exist");
		state = "chase";
		break;
		
}