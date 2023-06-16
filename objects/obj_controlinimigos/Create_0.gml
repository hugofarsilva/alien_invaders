/// @description Insert description here
// You can write your code in this editor
randomize();

//Level
global.level = 1;
proximo_level = 100;
pontos = 0;
boss = false;
boss_morto = false;

//Iniciar o alarme
alarm[0] = room_speed;

gameover_seq = noone;
level_completo = false;
sequencia = true;

//Criando um método para ganhar pontos
///@method ganha_pontos(pontos)
ganha_pontos = function(_pontos)
{
	pontos += _pontos * global.level;
	//Ganhando level SE os meus pontos forem maior que proximo_level
	if (pontos > proximo_level)
	{
		if (!instance_exists(obj_boss))
		{
			global.level ++;
			proximo_level *= 2;
		}
	}
}

