/// @description Insert description here
// You can write your code in this editor

global.inimigos ++;
instance_destroy();

instance_destroy(other);

//Criando a explosão
if (instance_exists(obj_particulas))
{
	obj_particulas.cria_explosao(x, y);
}

//Dando pontos para o jogo
global.pontos += 10;








