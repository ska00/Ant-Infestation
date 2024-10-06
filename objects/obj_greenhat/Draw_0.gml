/// @description Insert description here
// You can write your code in this editor

if global.SHOWHITBOXES
{
	draw_set_alpha(0.5);
	draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,c_red,c_red,c_red,c_red,false);
}

draw_set_alpha(1);
draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, 0, c_white,1);
