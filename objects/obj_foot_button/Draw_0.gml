/// @description draw cooldown effect

switch(state)
{
	case STATES.on:
		draw_sprite(sprite_index, 1, x, y);
	break;
	
	case STATES.off:
		draw_sprite_ext(sprite_index, 1, x, y, 1, 1, 0, c_grey, 1);
		//draw_set_alpha(0.5);
		//draw_rectangle(x, y, sprite_width, sprite_height, false);
		//draw_set_alpha(1);
		//draw_sprite(sprite_index, 1, x, y);
	break;
	
}

var Scribble = scribble("x1");
Scribble.starting_format("fnt", c_white);
Scribble.outline(c_black);
Scribble.draw(x + sprite_width - Scribble.get_width() + padding , 
				y + sprite_height - Scribble.get_height() + padding * 2)