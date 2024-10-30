/// @description

var background_id = layer_background_get_id("Background")

if global.WON
{
	layer_background_change(background_id, spr_youwin)
}
else
{
	layer_background_change(background_id, spr_gameover)
}
