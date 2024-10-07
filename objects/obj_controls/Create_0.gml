/// @description keep track of how many ants have went by.

padding = 5;
x = 0 + padding;
y = 0 + padding;

width = sprite_get_width(spr_heart)
height = sprite_get_height(spr_heart);

var snd = audio_play_sound(snd_soundtrack, 8, true, 0);
audio_sound_gain(snd, 1, 3 * 1000);

game_ended = false;