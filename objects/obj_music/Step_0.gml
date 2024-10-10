/// @description Insert description here
// You can write your code in this editor
//time_counter += 1

//if time_counter > time{
//	instance_destroy()
//}

if mouse_check_button_pressed(mb_left)
{
	if not audio_is_playing(snd_soundtrack)
	{
		var snd = audio_play_sound(snd_soundtrack, 8, true, 0);
		audio_sound_gain(snd, 1, 3 * 1000);
	}
}