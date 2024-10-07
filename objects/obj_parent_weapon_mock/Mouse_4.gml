/// @description drop bag

if left_pressed exit;

if y < yground
{
	state = STATES.dropping
	radians = 0;
	
}
else 
{
	state = STATES.active
	weapon_used()
}

left_pressed = true;