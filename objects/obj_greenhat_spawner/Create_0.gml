/// @description 
depth = -100;

randomize();

interval = random_range(1, 3);

time = 0;

gamespeed = game_get_speed(gamespeed_fps);
interval = interval * gamespeed;


if global.SHOWSPAWNERS
{
	visible = true;
}