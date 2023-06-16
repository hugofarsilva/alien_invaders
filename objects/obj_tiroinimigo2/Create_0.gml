/// @description Insert description here
// You can write your code in this editor
speed = 10;
image_xscale = 1;
image_yscale = 1;
cores = choose(c_yellow, c_red, c_lime, c_fuchsia, c_olive, c_orange);
if (instance_exists(obj_player))
{
	direction = point_direction(x, y, obj_player.x, obj_player.y);
}
image_angle = direction + 90;





