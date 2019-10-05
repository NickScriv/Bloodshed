repeat(4)
		{
			instance_create_layer(other.x,other.y, "Effects", obj_hitEffect);
		}
		scr_addScreenShake(2,8);
	other.hp -= damage;
	with (obj_player)
	{
		state = "knockback";
	}
	instance_destroy();
