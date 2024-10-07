/// @description Insert description here
// You can write your code in this editor
var ants =  random_range(1, 10)
repeat(ants)
{
	var _x = random_range(x - 20, x + 20);
	
	instance_create_layer( _x, y, "Instances", obj_greenhat);
}

event_inherited()