/// @description Insert description here
// You can write your code in this editor


//Criando a explosão
if (instance_exists(obj_particulas))
{
	obj_particulas.cria_explosao(x, y);
}

//Dando pontos para o jogo
obj_controlinimigos.pontos += 10;

//Rodando o método de ganhar pontos
ganhando_pontos(pontos);

global.inimigos ++;




