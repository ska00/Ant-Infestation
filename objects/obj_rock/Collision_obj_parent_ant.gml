/// @description

with obj_rock_shooter
{
	started = false;
	time = 0;
}

other.hp -= 25;
if other.hp > 0 hurt_ant(other);


instance_destroy();


audio_play_sound(snd_rock, 4, false);