/// @description Insert description here
// You can write your code in this editor

#region Variáveis

image_xscale = 0.7;
image_yscale = 0.7;

#endregion

if (place_meeting(x, y, obj_minion1))
{
	instance_destroy(id, false);
}

//Iniciando o alarme entre 1 e 3 segundos para atirar
alarm[0] = random_range(1, 3) * room_speed;
atirando = function()
{
	if (y >= 64)
	{
		instance_create_layer(x - 3, y + sprite_height/3, "Tiros", obj_tirominion);
	}
}





