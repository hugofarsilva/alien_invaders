// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screenshake(_shake)
{
	var shakescreen = instance_create_layer(x, y, "Player", obj_shakescreen)
	shakescreen.shake = _shake;
}

function destroy_seq()
{
	var elementos = layer_get_all_elements("Transitions")
	layer_sequence_destroy(elementos[0]);
	room_goto_next();
}

//Função para ganhando_pontos(_pontos)
function ganhando_pontos(_pontos)
{
	//Checando se o control existe
	if (instance_exists(obj_controlinimigos))
	{
		obj_controlinimigos.ganha_pontos(_pontos);
	}
}

function destroi_seq_boss()
{
	var elementos = layer_get_all_elements("Boss_entrando");
	layer_sequence_destroy(elementos[0]);
	//Criando o Boss
	instance_create_layer(288, 134, "inimigos", obj_boss);
}