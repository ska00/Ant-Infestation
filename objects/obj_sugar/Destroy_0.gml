/// @description reset all ants

var len = array_length(ants_tranced)
for (var i = 0; i < len; i ++)
{
	with ants_tranced[i] 
	{
		state = STATES.idle;
		speed = 0;
		if image_xscale> 0 image_xscale = - image_xscale;
		image_blend = -1;
	}
}

print("Destroyed");