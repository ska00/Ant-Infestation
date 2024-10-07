/// @description Draw timer

var text = $"{minutes}:{floor(seconds)}"
if seconds < 10
{
	text = $"{minutes}:0{floor(seconds)}"
}

var Scribble = scribble(text)
	
// Format Scribble
Scribble.starting_format("fnt", c_white);
Scribble.scale(2)
	
// Draw text
Scribble.draw(xtimer + room_width / 2 - Scribble.get_width(), ytimer + padding)