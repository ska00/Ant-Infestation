/// @description Insert description here
// You can write your code in this editor


if alpha >= 1
{
	draw_sprite_ext(spr_gameover, 1, x, y, 1, 1, 0, c_white, 1);
	var Scribble = scribble("Press [[space] to continue")
	
		// Format Scribble
		Scribble.starting_format("fnt", c_white);
		Scribble.align(fa_center, fa_middle);
		Scribble.scale(1)
	
		// Draw text
		Scribble.draw(room_width / 2, 160)
		
		draw_sprite_ext(spr_title_gameover, 1, x, y, 1, 1, 0, c_white, alpha);
		
		// UPDATE UPDATE UUPDATE
		global.WON = false
		room_goto(rm_end)
		
		exit;
}

alpha += 0.01;


draw_sprite_ext(spr_title_gameover, 1, x, y, 1, 1, 0, c_white, alpha);

