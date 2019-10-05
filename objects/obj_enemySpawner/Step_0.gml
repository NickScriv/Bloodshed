var enemyCount = instance_number(obj_enemyParent);
if (instance_exists(obj_player)) && (enemyCount < obj_player.kills/1.5) && (obj_player.kills <= 100)
{
	
	if (room == R1) && (obj_player.kills <= 35)
	{
		if (enemyCount > 5)
		{
			exit;
		}
		var enemy = choose(obj_golem, obj_saytr,obj_enemyWasp, obj_enemyWasp);
		if (obj_player.kills > 10) && (!instance_exists(obj_Boss1))
		{
			enemy = choose(obj_Boss1);
		}
		var newX = random_range(220, room_width - 220);
		while (point_distance(newX,0, obj_player.x, 0) < 220)
		{
			var newX = random_range(220, room_width - 220);
		}
	
		instance_create_layer(newX, obj_player.y - 20, "Instances", enemy);
	}
	if (enemyCount <= 0) && (obj_player.kills >= 35) && (room == R1)
	{
		if (obj_game.alpha > 0)
		{
			obj_game.state = "In_Room_Transition_Enter";
		}
		else
		{
			obj_player.kills = 0;
			obj_player.hp = 100;
			room_goto(R2);
			obj_player.x = 75;
			obj_player.y = 275;
		}
	}
	if (room == R2) && (obj_player.kills <= 50)
	{
		if (enemyCount > 4)
		{
			exit;
		}
		var enemy = choose(obj_Bandit, obj_Orgre,obj_Wolf, obj_Yeti);
		if (obj_player.kills > 10) && (!instance_exists(obj_Boss2))
		{
			enemy = choose(obj_Boss2);
		}
		var newX = random_range(220, room_width - 220);
		while (point_distance(newX,0, obj_player.x, 0) < 220)
		{
			var newX = random_range(220, room_width - 220);
		}
	
		instance_create_layer(newX, obj_player.y - 20, "Instances", enemy);
	}
		if (enemyCount <= 0) && (obj_player.kills >= 50) && (room == R2)
		{
			if (obj_game.alpha > 0)
			{
				obj_game.state = "In_Room_Transition_Enter";
			}
			else
			{
				room_goto(gameOver);			
			}
		}

}
		
