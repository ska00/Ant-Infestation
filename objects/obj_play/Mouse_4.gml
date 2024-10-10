/// @description Start game

room_goto(rm_main)

var snd = audio_play_sound(snd_soundtrack, 8, true, 0);
audio_sound_gain(snd, 1, 3 * 1000);