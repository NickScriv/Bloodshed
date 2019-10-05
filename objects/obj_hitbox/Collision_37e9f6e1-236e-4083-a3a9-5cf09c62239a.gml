if (creator == noone) || (creator == other) || (ds_list_find_index(hit_objects,other) != -1)
{
	exit;
}
other.hp -= damage;
audio_play_sound(a_medium_hit, 4, false);
if (instance_exists(obj_player)) 
{
	 if (creator.object_index == obj_player) && (other.hp <= 0) && (other.state != "death")
	{
		obj_player.kills += 1;
		
	}
	if (other.object_index == obj_player) 
	{
		repeat(4)
		{
			instance_create_layer(other.x,other.y, "Effects", obj_hitEffect);
		}
		scr_addScreenShake(2,8);
	
	}
	else
	{
		other.alarm[0] = 120;
		scr_addScreenShake(2,5);
	}
}
if (other.object_index != obj_golem) && (other.object_index != obj_player) && (other.object_index != obj_enemyWasp) &&(other.object_index != obj_Boss2)
{
	repeat(4)
	{
		instance_create_layer(other.x,other.y, "Effects", obj_hitEffect);
	}
}
if (other.object_index == obj_golem)
{
	repeat(4)
	{
		instance_create_layer(other.x,other.y, "Effects", obj_hitEffect2);
	}
}
if (other.object_index == obj_Boss2)
{
	repeat(4)
	{
		instance_create_layer(other.x,other.y, "Effects", obj_hitEffect21);
	}
}
 if (creator.object_index == obj_enemyWasp) && (other.object_index == obj_player)
 {
	 obj_player.numberofjumps = 0;
 }
ds_list_add(hit_objects,other);
show_debug_message(other.hp);
if (other.state != "death")
{
other.state = "knockback";
}
other.knockBackSpeed = knockback * image_xscale;

