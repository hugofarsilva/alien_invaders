/// @description Insert description here
// You can write your code in this editor

audio_play_sound(snd_boss_fight, 0, 1);
/*
randomize();
image_xscale = 0.2
image_yscale = 0.2
sanguemax= 30;
sangue = sanguemax;
carregando = true;
delay_tiro = room_speed/1.5;
espera_tiro = 0;
sprite = sprite_index;
timer_dano = 0;
tempo_dano = room_speed/8;
estado = noone;
dano = false;
transition_seq = true;
estado_atual = noone
delay_estado = room_speed * 8;
espera_estado = delay_estado;

estado_entrando = function()
{
	
	vspeed = 1;
	screenshake(10);
	vibrate_start(500);
	if y == 128
	{
		hspeed = choose(-2, 2);
		estado = estado_parado;
		
	}
}

estado_parado = function()
{
	vspeed = 0;
	estado = estado_movelado;
	
}



estado_movelado = function()
{
	estado = estado_dano;
	//Invertendo a velocidade horizontal
	if (x > 468 || x < 107)
	{
		hspeed *= -1;
	}
	
	
}

#region Atacando

//Método para o tiro 1
///@method tiro01(true_direita_false_esquerda)
tiro01 = function(_direita)
{
	if (_direita)
	{
		var _posx = 80;
	}
	else
	{
		var _posx = -80;
	}
	
	instance_create_layer(x + _posx, y + 92, "Tiros", obj_tiroinimigo1);
}

//Método para o tiro2
tiro02 = function()
{
	instance_create_layer(x, y - 28, "Tiros", obj_tiroinimigo2);
}

estado_atacando = function()
{
	//Diminuindo o valor da espera do tiro
	espera_tiro--;
	//Criando o tiro SE a espera do tiro for menor ou igual a 0
	if (espera_tiro <= 0)
	{
		tiro02();
		espera_tiro = delay_tiro / 4;
	}
	if (espera_tiro == 15)
	{
		tiro01(false);
		tiro01(true);
		espera_tiro = delay_tiro * 2;
	}
	
			
}
estado_atacando2 = function()
{
	espera_tiro--;
	if (espera_tiro <= 0)
	{
		tiro01(false);
		tiro01(true);
		espera_tiro = delay_tiro * 2;
	}
}
#endregion

estado_dano = function()
{
	
	timer_dano--;
	if (timer_dano <= 0) 
	{
		//Checando se eu devo morrer
		if (sangue <= 0) 
		{
			estado = estado_morto;
		}
		else 
		{
			estado = estado_parado;
			timer_dano = tempo_dano;
			dano = false;
		}
	}
}

desenha_sprite = function() {
	
	//Se eu estou levando dano eu mudo de cor
	if (dano) 
	{
		
			shader_set(sh_branco);
			draw_sprite_ext(sprite, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
			shader_reset();
		
	}
		
	else {
		
		draw_sprite_ext(sprite, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	}
	
}

estado_morto = function() {
	
	instance_destroy();
	//Criando a explosão
	if (instance_exists(obj_particulas))
	{
		obj_particulas.cria_explosao(x, y);
	}
	
}	
	estado = estado_entrando;
	
/*
//Criando o método de levar dano
///@method leva_dano(dano)
leva_dano = function(_dano) {
	if (estado == estado_parado) {
		
		estado = estado_dano;
		//Perdendo vida
		//Se a o valor do dano não foi definido então o inimigo perde 1 de vida
		if (_dano == undefined) sangue -= 1;
		else sangue -= _dano;
		//Vou avisar que ele levou dano
		dano = true;
	}
}
*/

estado_atual = choose("estado1", "estado2", "estado3");

#region Variáveis
image_xscale = 0.2
image_yscale = 0.2
delay_tiro = room_speed/1.5;
espera_tiro = 0;
delay_estado = room_speed * 8;
espera_estado = delay_estado;
velocidade_horizontal = 3;
vida_max = 200;
vida_atual = vida_max;
carregando = true;
criar_minions = true;
dano = false;
sprite = sprite_index;
timer_dano = 0;
tempo_dano = room_speed/8;
transition_seq = true;
#endregion

//Método para o tiro 1
///@method tiro01(true_direita_false_esquerda)
tiro01 = function(_direita)
{
	if (_direita)
	{
		var _posx = 80;
	}
	else
	{
		var _posx = -80;
	}
	
	instance_create_layer(x + _posx, y + 92, "Tiros", obj_tiroinimigo1);
}

//Método para o tiro2
tiro02 = function()
{
	instance_create_layer(x, y - 28, "Tiros", obj_tiroinimigo2);
}


//Método para troca de estados
troca_estado = function()
{
	//Diminuindo a espera do estado
	espera_estado--;
	show_debug_message(espera_estado)
	if (espera_estado <= 0)
	{
		//Vou escolher outro estado SE minha vida não for menor do que metade
		if (vida_atual > vida_max / 2)
		{
			estado_atual = choose("estado1", "estado2", "estado3");
		}
		else //Estou com metade ou menos da minha vida máxima
		{
			estado_atual = choose("estado1", "estado2", "estado3", "estado4");
		}
		espera_estado = delay_estado;
		//Pode criar minions
		criar_minions = true;
	}
}

estado_01 = function()
{
	//Diminuindo o valor da espera do tiro
	espera_tiro--;
	//Criando o tiro SE a espera do tiro for menor ou igual a 0
	if (espera_tiro <= 0)
	{
		tiro02();
		espera_tiro = delay_tiro;
	}
}

estado_02 = function()
{
	//Indo para a direita
	x += velocidade_horizontal;
	//Invertendo a velocidade horizontal
	if (x > 468 || x < 107)
	{
		velocidade_horizontal *= -1;
	}
	espera_tiro--;
	if (espera_tiro <= 0)
	{
		tiro01(false);
		tiro01(true);
		espera_tiro = delay_tiro * 2;
	}
}

estado_03 = function()
{
	//Diminuindo o valor da espera do tiro
	espera_tiro--;
	//Criando o tiro SE a espera do tiro for menor ou igual a 0
	if (espera_tiro <= 0)
	{
		tiro02();
		espera_tiro = delay_tiro * 2;
	}
	if (espera_tiro == delay_tiro)
	{
		tiro01(false);
	}
	if (espera_tiro == delay_tiro + round(delay_tiro/2))
	{
		tiro01(true);
	}
}

estado_04 = function()
{
	
	//Indo para o meio da tela
	x += sign(room_width / 2 - x);
	
	//Criando os Minions SE eu posso criar minions
	if (criar_minions)
	{
		repeat(3)
		{
			var _y = random_range(-64, - 448);
			instance_create_layer(0, _y, "Inimigos", obj_inimigo);
		}
		alarm[1] = room_speed;
		//Já criei os minions, não posso criar mais
		criar_minions = false;
	}
}



estado_dano = function()
{
	
	timer_dano--;
	if (timer_dano <= 0) 
	{
		//Checando se eu devo morrer
		if (vida_atual <= 0) 
		{
			estado_morto();
		}
		else 
		{
			
			timer_dano = tempo_dano;
			dano = false;
		}
	}
}

estado_morto = function() {
	
	instance_destroy();
	//Criando a explosão
	if (instance_exists(obj_particulas))
	{
		obj_particulas.cria_explosao(x, y);
	}
	
}	
desenha_sprite = function() 
{
	
//Se eu estou levando dano eu mudo de cor
if (dano) 
{
		
	shader_set(sh_branco);
	draw_sprite_ext(sprite, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	shader_reset();
		
}
		
else {
		
	draw_sprite_ext(sprite, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
	
}

if (room == rm_fase2)
{
	vida_max = 400;
	vida_atual = vida_max;
}
else if (room == rm_fase3)
{
	vida_max = 600;
	vida_atual = vida_max;
}
else if (room == rm_fase4)
{
	vida_max = 800;
	vida_atual = vida_max;
}
else if (room == rm_fase5)
{
	vida_max = 1000;
	vida_atual = vida_max;
}