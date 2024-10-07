/// @description update weapon count

weapon.count -= 1;

if weapon.count == 0
{
	state = STATES.depleted
}

global.WEAPONACTIVE = noone