/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
/// @description ant moves

if hp <= 0 
{
	state = STATES.squashed
}

switch state
{
	
	case STATES.idle:
		x += move_speed

		if x > room_width or x < global.OUTOFBOUNDS 
		{
			instance_destroy();
		}
	break;
	
	case STATES.squashed:
		image_yscale -= 0.05;
		if image_yscale == 0 instance_destroy();
	break;
	
	case STATES.tranced:
		//print("ant is tranced");
		
		sprite_index = spr_greenhat_tranced
		
		//if not instance_exists(obj_sugar)
		//{
		//	state = STATES.idle
		//	speed = 0;
		//}
		
		
		if sign(hspeed) > 0	image_xscale = global.ANTSCALE
		if sign(hspeed) < 0	image_xscale = -global.ANTSCALE
		
		
		//move_towards_point( obj_sugar.x, obj_sugar.y, move_speed);

		if abs(point_distance(x, y, obj_sugar.x, obj_sugar.y)) > sugar_distance
		{
			move_towards_point( obj_sugar.x, obj_sugar.y, abs(move_speed + 0.2));
		}
	break;


	case STATES.gameover:
		speed = 0;
		image_speed = 0;
	break;
	
	
}

