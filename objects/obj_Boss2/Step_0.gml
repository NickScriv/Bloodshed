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
		scr_set_sprite(spr_Boss2Run, .6, 0);
		scr_Boss_chase_state();
		break;
	case "stall":
		scr_set_sprite(spr_Boss2Idle, .5, 0);
		if (alarm[1] <= 0)
		{
			state = "chase";
		}
		
		break;
	case "attack":
		if (instance_exists(obj_player))
		{
		image_xscale = sign(obj_player.x - x);
		if (image_xscale == 0)
		{
			image_xscale = 1;
		}
		}
		scr_set_sprite(spr_Boss2Attack, .4,0);
		if (scr_animation_hit_frame(3))
		{
			audio_play_sound(a_big_hit, 5, false);
			scr_create_hitbox(x,y,self,spr_Boss2AttackDamage,15,3,25,image_xscale);
			scr_addScreenShake(5,10);
		}
		if (scr_animation_end())
		{
			state = "stall";
			alarm[1] = 40;
		}
			
		
		break;
	case "knockback":
		scr_KnockbackState(spr_Boss2Hurt, .25, "chase");
		break;
	case "death":
		
		scr_death_state(spr_Boss2Die, .4);
		if (scr_animation_hit_frame(3)) 
		{
		instance_create_layer(x,y+10,"Instances", choose(obj_DamagePowerUp, obj_HealthPowerUp, obj_HealthPowerUp));
		}
		break;
}
