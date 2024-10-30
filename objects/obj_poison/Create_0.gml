/// @description

duration = global.WEAPONEFFECTDUR.sugar;

time_counter = 0;
time = duration * game_get_speed(gamespeed_fps);

// Play the animation of the bomb
sprite_index = spr_poison_explode
// Play explosion sound
audio_play_sound(snd_explosion, 2, false)

// Go through each ant in a radius and slow them down
var _list = ds_list_create();
var _num = collision_circle_list(x, y, 50, obj_parent_ant, false, true, _list, true);
if (_num > 0)
{
    for (var i = 0; i < _num; ++i;)
    {
        with _list[| i]
		{
			move_speed = move_speed * 0.60
			image_speed = image_speed * 0.75
			image_blend = hex("dfb3ff")	//b96cf0
			
		}
    }
}
ds_list_destroy(_list);