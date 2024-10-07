/// @description Grey it out.

switch(state)
{
	case STATES.unactive:
		draw_sprite(sprite_index, 1, x, y);
	break;
	
	case STATES.active:
		draw_sprite_ext(sprite_index, 1, x, y, 1, 1, 0, c_grey, 1);
	break;
	
	case STATES.depleted:
		draw_sprite_ext(sprite_index, 1, x, y, 1, 1, 0, c_grey, 0.8);
	break;
	
}

//draw_sprite(sprite_index, 1, x, y);

var Scribble = scribble("x" + string(weapon.count));
Scribble.starting_format("fnt", c_white);
Scribble.outline(c_black);
Scribble.draw(x + sprite_width - Scribble.get_width() + padding , 
				y + sprite_height - Scribble.get_height() + padding * 2)