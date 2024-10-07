/// @description game stuff

if game_ended exit;

if global.HEALTH <= 0
{
	if instance_exists(obj_parent_ant) with obj_parent_ant state = STATES.gameover;
	instance_deactivate_object(obj_rock_shooter);
	
	//with obj_parent_button state = STATES.depleted;
	instance_deactivate_object(obj_parent_button);
	instance_deactivate_object(obj_parent_spawner);
	
	instance_deactivate_object(obj_timer);
	
	instance_create_layer(0, 0, "Instances", obj_gameover);
	
	game_ended = true;
	
	exit;
}

if global.TIME == 0 and not instance_exists(obj_parent_ant)
{
	if instance_exists(obj_parent_ant) with obj_parent_ant state = STATES.gameover;
	instance_deactivate_object(obj_rock_shooter);
	
	//with obj_parent_button state = STATES.depleted;
	instance_deactivate_object(obj_parent_button);
	instance_deactivate_object(obj_parent_spawner);
	
	instance_deactivate_object(obj_timer);
	
	instance_create_layer(0, 0, "Instances", obj_youwin);
	
	game_ended = true;
	
	exit;
}

if instance_exists(obj_parent_ant)
{
	if not audio_is_playing(snd_antsteps)
	{
		audio_play_sound(snd_antsteps, 5, false, 1.4)
	}
}
else
{
	audio_stop_sound(snd_antsteps);
}

