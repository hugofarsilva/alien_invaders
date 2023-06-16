/// @description Insert description here
// You can write your code in this editor

/*
if (boss == false)
{
	if (room == rm_fase1 and global.level >= 5)
	{
		instance_create_layer(288, -192, "Inimigos", obj_boss);
		boss = true;
		audio_stop_all();
		
	}
	else if (room == rm_fase2 and global.level >= 10)
	{
		instance_create_layer(288, -192, "Inimigos", obj_boss);
		boss = true;
		obj_boss.sangue = 100;
		obj_boss.sanguemax = 100;
	}
	else if (room == rm_fase3 and global.level >= 15)
	{
		instance_create_layer(288, -192, "Inimigos", obj_boss);
		boss = true;
		obj_boss.sangue = 1000;
		obj_boss.sanguemax = 1000;
	}
	else if (room == rm_fase4 and global.level >= 20)
	{
		instance_create_layer(288, -192, "Inimigos", obj_boss);
		boss = true;
		obj_boss.sangue = 2000;
		obj_boss.sanguemax = 2000;
	}
	else if (room == rm_fase4 and global.level >= 25)
	{
		instance_create_layer(288, -192, "Inimigos", obj_boss);
		boss = true;
		obj_boss.sangue = 3000;
		obj_boss.sanguemax = 3000;
	}
	else if (room == rm_fase5 and global.level >= 30)
	{
		instance_create_layer(288, -192, "Inimigos", obj_boss);
		boss = true;
		obj_boss.sangue = 4000;
		obj_boss.sanguemax = 4000;
	}
}

*/

if !instance_exists(obj_player) and !gameover_seq and !level_completo
{
	gameover_seq = layer_sequence_create("Transitions", room_width/2, room_height/2, sq_gameover);
	
		
}



