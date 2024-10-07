/// @description Add timestep

if global.TIME == 0
{
	exit;
}


time_counter += 1

if time_counter > gamespeed
{
	time_counter = 0
	global.TIME -= 1
}

minutes = floor(global.TIME / 60)
seconds = (global.TIME - minutes * 60) % 60


//print("Greenhat: ", global.ANTCOUNT.greenhat);
//print("Looksmax: ", global.ANTCOUNT.looksmax);

