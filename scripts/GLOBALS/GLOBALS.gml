
scribble_font_bake_outline_and_shadow("fnt_numbers", "fnt",0,0,SCRIBBLE_OUTLINE.FOUR_DIR, 2,false);

randomize();

global.ANTSCALE = 0.6

global.ANTS = {
	obj_blue: {name: "blue", move_speed: 1.1, health_points: 25},
	obj_fire: {name:"fire", move_speed: 0.9, health_points: 50},
	obj_greenhat: {name: "greenhat", move_speed: 0.8, health_points: 50},
	obj_looksmax: {name: "looksmax", move_speed: 0.6, health_points: 50},
	obj_looksmax_ugly: {name: "looksmax_ugly", move_speed: 1.2, health_points: 50},
	obj_queen : {name: "queen", move_speed: 0.2, health_points: 200},
}

global.ANTCOUNT = {
	greenhat: 0,
	looksmax: 0,
	fire: 0,
	blue : 0,
	queen : 0
}


global.OUTOFBOUNDS = -32;

//global.SHOWHITBOXES = true;

global.SHOWSPAWNERS = false;

global.STARTTIME = 1 * 60;	// 1 minute

global.TIME = global.STARTTIME ;	

global.WEAPONS =
{
	obj_boot_button: {"object": obj_boot, "count": 3, "trigger": "E", "used": false},
	obj_poison_button: {"object": obj_poison_mock, "count": 3, "trigger": "W", "used": false},
	obj_sugar_button: {"object": obj_sugar_mock, "count": 3, "trigger": "Q", "used": false},
}


global.WEAPONACTIVE = noone;

global.WEAPONEFFECTDUR = {"poison": 5, "sugar": 3}

//global.WEAPONUSED = false;

//global.WEAPONS =
//{
//	"boot" : obj_boot,
//	"poison": obj_poison,
//	"sugar": obj_sugar
//}

//global.WEAPONCOUNT =
//{
//	"boot" : 3,
//	"poison": 3,
//	"sugar": 3
//}