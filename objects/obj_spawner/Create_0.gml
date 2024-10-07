/// @description 

depth = -100;

off_time = random_range(min_off_time, max_off_time);

time = 0;

gamespeed = game_get_speed(gamespeed_fps);
off_time = off_time * gamespeed;


if global.SHOWSPAWNERS
{
	visible = true;
}