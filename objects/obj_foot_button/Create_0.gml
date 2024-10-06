/// @description 

padding = 5;

y = 0 + padding;
x = room_width - sprite_width - padding;

depth = -10;

cooldown = 3 * game_get_speed(gamespeed_fps); // seconds
time = 0;

STATES = 
{
	"on": 0,
	"off": 1
}

state = STATES.on

scribble_font_bake_outline_and_shadow("fnt_numbers", "fnt",0,0,SCRIBBLE_OUTLINE.FOUR_DIR, 2,false);