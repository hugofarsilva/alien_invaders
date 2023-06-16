/// @description Insert description here
// You can write your code in this editor
#region Variáveis

image_speed = 0;
vel = 5;
espera_tiro = 0;
sangueplayer = 10;
sangueplayermax = 10;
tiro = noone;

#endregion

#region Botões virtuais para o celular
//Criando o botão virtual
display_set_gui_size(576, 1024);
//Pegando dimensões da câmera
var _w = camera_get_view_width(view_camera[0]);
var _h = camera_get_view_height(view_camera[0]);
esq = virtual_key_add(0, 0, _w/2, _h, vk_left);
dir = virtual_key_add(_w/2, 0, _w/2, _h, vk_right);
#endregion

#region Movimentação
movimento = function()
{
	var _right = keyboard_check(vk_right);
	var _left = keyboard_check(vk_left);
	
	x += (_right - _left) * vel;
	x = clamp(x, 64, 512);
}
#endregion

#region Tiros
atirando = function()
{
	
	espera_tiro--
	//Diminuindo a espera do tiro
	if (espera_tiro >= 15)
	{
		espera_tiro -= global.level;
	}
	
	//Se a espera acabou então eu atiro
	if (espera_tiro <= 0 and room == rm_fase1)
	{
		audio_play_sound(snd_tiro, 10, false);
		instance_create_layer(x, y-40, "Tiros", obj_tiro_player);
		//Resetando a espera do tiro
		espera_tiro = 60;
	}
	else if (espera_tiro <= 0 and room == rm_fase2)
	{
		audio_play_sound(snd_tiro, 10, false);
		instance_create_layer(x, y-40, "Tiros", obj_tiro_player);
		instance_create_layer(x-25, y-37, "Tiros", obj_tiro_player);
		//Resetando a espera do tiro
		espera_tiro = 60;
	}
	else if (espera_tiro <= 0 and room == rm_fase3)
	{
		audio_play_sound(snd_tiro, 10, false);
		instance_create_layer(x, y-40, "Tiros", obj_tiro_player);
		instance_create_layer(x-25, y-37, "Tiros", obj_tiro_player);
		instance_create_layer(x+25, y-37, "Tiros", obj_tiro_player);
		//Resetando a espera do tiro
		espera_tiro = 60;
	}
	else if (espera_tiro <= 0 and room == rm_fase4)
	{
		audio_play_sound(snd_tiro, 10, false);
		instance_create_layer(x, y-40, "Tiros", obj_tiro_player);
		instance_create_layer(x-25, y-37, "Tiros", obj_tiro_player);
		instance_create_layer(x+25, y-37, "Tiros", obj_tiro_player);
		instance_create_layer(x-49, y-17, "Tiros", obj_tiro_player);
		//Resetando a espera do tiro
		espera_tiro = 60;
	}
	else if (espera_tiro <= 0 and room == rm_fase5)
	{
		audio_play_sound(snd_tiro, 10, false);
		instance_create_layer(x, y-40, "Tiros", obj_tiro_player);
		instance_create_layer(x-25, y-37, "Tiros", obj_tiro_player);
		instance_create_layer(x+25, y-37, "Tiros", obj_tiro_player);
		instance_create_layer(x-49, y-17, "Tiros", obj_tiro_player);
		instance_create_layer(x+49, y-17, "Tiros", obj_tiro_player);
		//Resetando a espera do tiro
		espera_tiro = 60;
	}
	
}

#endregion


///@method perde_vida()
perde_vida = function()
{
	if (sangueplayer > 0)
	{
		sangueplayer --;
		
	}
	else
	{
		instance_destroy();
	}
}





