// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hurt_ant(_object)
{
	print("Hurt ant on");
	with _object
	{
		repeat(60)
		{
			image_blend = c_red
		}
		image_blend = -1;
	}
}