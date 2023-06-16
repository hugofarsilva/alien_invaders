/// @description Insert description here
// You can write your code in this editor

if (y > 1216)
{
	instance_destroy(id, false);
	obj_player.perde_vida();
	
}

vspeed = 1 + global.level;

if vspeed >= 7
{
	vspeed = 7;
}
show_debug_message(vspeed)

if !instance_exists(obj_player)
{
	instance_destroy();
}

