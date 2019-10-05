if (obj_game.state == "In_Game")
{
	switch (state)
	{
		case states.normal: scr_Player_normalMovement_state(); break;
		case states.attack: scr_attack1_state(); break;
		case states.attack2: scr_attack2_state(); break;
		case states.attack3: scr_attack3_state(); break;
		case states.airattack: scr_airattack_state(); break;
		case states.airattackfall: scr_airattackFall_state(); break;
		case states.airattackfallhit: scr_airattackFallHit_state(); break;
		case "knockback":
		#region knockback
		scr_KnockbackState(spr_playerHitStun, .5, states.normal);
		#endregion
		break;
		case "death":
		#region death
		countRestart--;
		scr_death_state(spr_playerDie, .3);
		scr_moveAndCollide(0,5)
	
		#endregion
		break;
		default: 
			show_debug_message("State "+state+" does not exist");
			state = states.normal;
			break;
	
	}
}
show_debug_message(state);

if (state = "death" ) && (countRestart <= 0)
{
		if (obj_game.alpha > 0)
		{
			obj_game.state = "In_Room_Transition_Enter";
		}
		else
		{
			hp = 100;
			kills = 0;
			state = states.normal;
			room_restart();
			obj_player.x = 75;
			obj_player.y = 275;
		}
}