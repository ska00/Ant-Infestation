/// @description Desgin level


time_passed = global.STARTTIME - global.TIME

if time_done == time_passed exit;

switch(time_passed)
{
	case 2:
		spawn_ant("greenhat", ant_hills[0])
	case 5:
		spawner = create_spawner(ant_hills[0].x, obj_greenhat, [2, 3]);
		array_push(spawners, spawner);
	end_action()
	break;
	case 8:
		spawn_ant("looksmax", ant_hills[0])
	end_action()
	break;
	case 10:
		spawn_ant("fire", ant_hills[0])
	end_action()
	break;
	
	case 15:
		array_push(ant_hills, create_hill(ant_hills[0].x - 35))
		spawner = create_spawner_weighted(ant_hills[1].x, [[0.3, obj_fire], [0.7, obj_blue]], [2, 3]);
		array_push(spawners, spawner);
		
	end_action()
	break;
	
	case 25:
		delete_ant_hill(1)
		spawn_ant("looksmax", ant_hills[0])
	end_action()
	case 27:
		spawn_ant("looksmax", ant_hills[0])
	end_action()
	break;
	case 28:
		spawn_ant("blue", ant_hills[0])
	end_action()
	break;
	case 29:
		spawn_ant("blue", ant_hills[0])
	end_action()
	break;
	case 30:
		spawn_ant("blue", ant_hills[0])
	end_action()
	break;
	
	case 34:
		array_push(ant_hills, create_hill(ant_hills[0].x - 55))
		spawner = create_spawner(ant_hills[0].x - 55, obj_greenhat, [1.5, 2.5]);
		array_push(spawners, spawner);
	end_action()
	break;
	
	case 45:
		delete_ant_hill(1)
		spawn_ant("queen", ant_hills[0])
	end_action()
	break;
	
	case 51:
		array_push(ant_hills, create_hill(ant_hills[0].x - 35))
		spawner = create_spawner_weighted(ant_hills[1].x, [[0.35, obj_fire], [0.35, obj_blue], [0.3, obj_looksmax]], [2, 3]);
		array_push(spawners, spawner);
		
		array_push(ant_hills, create_hill(ant_hills[0].x - 65))
		spawner = create_spawner(ant_hills[0].x - 55, obj_greenhat, [1.5, 2.5]);
		array_push(spawners, spawner);
	end_action()
	break;
	
	case 60:
		spawn_ant("queen", ant_hills[0])
		spawn_ant("queen", ant_hills[1])
		
		// Delete all spawners
		var len = array_length(spawners)
		for (var i = 0; i < len; i ++)
		{
			instance_destroy(spawners[i])
			array_delete(spawners, i, 1)
		}
	end_action()
	break;
	
}