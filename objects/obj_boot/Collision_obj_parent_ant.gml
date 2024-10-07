/// @description Insert description here
// You can write your code in this editor
with obj_rock_shooter
{
	started = false;
	time = 0;
}

other.hp -= 50;
if other.hp > 0 hurt_ant(other);
