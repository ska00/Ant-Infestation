/// @description game stuff

if instance_exists(obj_parent_ant)
{
	if not audio_is_playing(snd_antsteps)
	{
		audio_play_sound(snd_antsteps, 6, false, 1.4)
	}
}
else
{
	audio_stop_sound(snd_antsteps);
}