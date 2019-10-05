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
		scr_set_sprite(spr_wolfRun, .5, 0);
		scr_chase_state();
		#endregion 
		break;
	case "attack":
		#region attack	
		scr_set_sprite(spr_wolfAttack, attackingSpeed, 0);
		if (scr_animation_hit_frame(3))
		{
			audio_play_sound(a_miss, 3, false);
			scr_create_hitbox(x, y, self, spr_wolfAttackDamage, 4, 4, 20, image_xscale);
		}
		if scr_animation_end()
		{
			state = "chase";
		}
		#endregion
		break;
	case "knockback":
		#region knockback
		scr_KnockbackState(spr_wolfHurt, .25, "chase");
		
		#endregion
		break;
	case "death":
	#region death
	scr_death_state(spr_wolfDie, .5);
	
	#endregion
	break;
	default: 
		show_debug_message("State "+state+" does not exist");
		state = "chase";
		break;
		
}