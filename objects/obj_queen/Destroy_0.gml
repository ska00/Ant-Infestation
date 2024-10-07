/// @description Insert description here
// You can write your code in this editor
var ants =  random_range(1, 10)
repeat(ants)
{
	var _x = random_range(x - 20, x + 20);
	
	spawn_ant("greenhat", _x, y);
}

event_inherited()