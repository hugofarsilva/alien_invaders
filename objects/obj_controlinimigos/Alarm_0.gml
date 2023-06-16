/// @description Insert description here
// You can write your code in this editor


//Criar inimigos
if !instance_exists(obj_inimigo)
{
	if room == rm_fase1
	{
		if (global.level < 5)
		repeat(3)
		{
			var _y = random_range(-64, - 448);
			var inst = instance_create_layer(0, _y, "Inimigos", obj_inimigo);
		}
		else
		{
			//Criar o boss (a animação de entrada do boss)
			//Garantir que a animação só seja criada uma vez
			if (sequencia)
			{
			
				screenshake(50);
				vibrate_start(500);
				layer_sequence_create("Boss_entrando", 288, 512, sq_bossentrando);
				sequencia = false;
				//Parando de tocar a múscica do do level
				audio_stop_all();
			}
		}
		
	}	
	else if room == rm_fase2
	{
		if (global.level < 10)
		repeat(6)
		{
			var _y = random_range(-64, - 448);
			var inst = instance_create_layer(0, _y, "Inimigos", obj_inimigo);
		}
		else
		{
			//Criar o boss (a animação de entrada do boss)
			//Garantir que a animação só seja criada uma vez
			if (sequencia)
			{
				screenshake(50);
				vibrate_start(500);
				layer_sequence_create("Boss_entrando", 288, 512, sq_bossentrando);
				sequencia = false;
				//Parando de tocar a múscica do do level
				audio_stop_all();
			}
		}
	}
	
	else if room == rm_fase3
	{
		if (global.level < 15)
		repeat(8)
		{
			var _y = random_range(-64, - 448);
			var inst = instance_create_layer(0, _y, "Inimigos", obj_inimigo);
		}
		else
		{
			//Criar o boss (a animação de entrada do boss)
			//Garantir que a animação só seja criada uma vez
			if (sequencia)
			{
				screenshake(50);
				vibrate_start(500);
				layer_sequence_create("Boss_entrando", 288, 512, sq_bossentrando);
				sequencia = false;
				//Parando de tocar a múscica do do level
				audio_stop_all();
			}
		}
	}
	else if room == rm_fase4
	{
		if (global.level < 20)
		repeat(12)
		{
			var _y = random_range(-64, - 448);
			var inst = instance_create_layer(0, _y, "Inimigos", obj_inimigo);
		}
		else
		{
			//Criar o boss (a animação de entrada do boss)
			//Garantir que a animação só seja criada uma vez
			if (sequencia)
			{
				screenshake(50);
				vibrate_start(500);
				layer_sequence_create("Boss_entrando", 288, 512, sq_bossentrando);
				sequencia = false;
				//Parando de tocar a múscica do do level
				audio_stop_all();
			}
		}
	}
	else if room == rm_fase5
	{
		if (global.level < 20)
		repeat(15)
		{
			var _y = random_range(-64, - 448);
			var inst = instance_create_layer(0, _y, "Inimigos", obj_inimigo);
		}
		else
		{
			//Criar o boss (a animação de entrada do boss)
			//Garantir que a animação só seja criada uma vez
			if (sequencia)
			{
				screenshake(50);
				vibrate_start(500);
				layer_sequence_create("Boss_entrando", 288, 512, sq_bossentrando);
				sequencia = false;
				//Parando de tocar a múscica do do level
				audio_stop_all();
			}
		}
	}
}

//Iniciar o alarme novamente
alarm[0] = room_speed * 3;

