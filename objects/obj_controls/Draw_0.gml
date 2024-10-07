/// @description Insert description here
// You can write your code in this editor

if global.HEALTH <= 0
{
	//draw_sprite_ext(spr_heart, 1, x, y, 1, 1, 0, c_grey, 0.8);
	
	
	exit;
}



draw_sprite(spr_heart, 1, x, y);

var Scribble = scribble("x" + string(global.HEALTH));
Scribble.starting_format("fnt", c_white);
Scribble.outline(c_black);
Scribble.draw(x + width - Scribble.get_width() + padding , 
				y + height - Scribble.get_height() + padding * 2)