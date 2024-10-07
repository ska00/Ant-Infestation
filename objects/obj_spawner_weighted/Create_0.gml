/// @description 

depth = -100;

image_blend = c_red;

//min_off_time = 1;
//max_off_time = 2.5;

off_time = random_range(min_off_time, max_off_time);

time = 0;

gamespeed = game_get_speed(gamespeed_fps);
off_time = off_time * gamespeed;


// assumed to be given from lowest to highest
//ants = [[0.1, obj_fire],[0.2, obj_blue],[0.7, obj_greenhat]]
ant_count = array_length(ants);

if global.SHOWSPAWNERS
{
	visible = true;
}