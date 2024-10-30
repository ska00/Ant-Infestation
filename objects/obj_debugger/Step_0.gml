/// @description Insert description here
// You can write your code in this editor
timer++

if timer > 60 * 2
{
	// WINNING DEBUG
	instance_destroy(obj_music)
	
	if audio_is_playing(snd_soundtrack)
	{
		audio_stop_sound(snd_soundtrack);
	}
	
	
	
	if instance_exists(obj_parent_ant) with obj_parent_ant state = STATES.gameover;
	instance_deactivate_object(obj_rock_shooter);
	
	//with obj_parent_button state = STATES.depleted;
	instance_deactivate_object(obj_parent_button);
	instance_deactivate_object(obj_parent_spawner);
	
	instance_deactivate_object(obj_timer);
	
	instance_create_layer(0, 0, "Instances", obj_youwin);
	
	instance_destroy()
}
