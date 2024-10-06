/// @description

if state == STATES.on
{
	if instance_exists(obj_foot) exit;
	instance_create_layer(0, 0, "Instances", obj_foot);
	state = STATES.off
}
