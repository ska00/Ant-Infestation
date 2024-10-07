/// @description 

var time_passed = global.STARTTIME - global.TIME

if time_done == time_passed exit;

switch(time_passed)
{
	case 5:
		spawn_ant("looksmax", obj_greenhat_spawner.x, obj_greenhat_spawner.y)
		time_done = time_passed;
	break;
	case 8:
		spawn_ant("blue", obj_greenhat_spawner.x, obj_greenhat_spawner.y)
		time_done = time_passed;
	break;
	case 12:
		spawn_ant("fire", obj_greenhat_spawner.x, obj_greenhat_spawner.y)
		time_done = time_passed;
	break;
	case 1:
		spawn_ant("queen", obj_greenhat_spawner.x, obj_greenhat_spawner.y)
		time_done = time_passed;
	break;
}