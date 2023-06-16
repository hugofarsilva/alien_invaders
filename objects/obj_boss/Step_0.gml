/// @description Insert description here
// You can write your code in this editor
//estado();


/*
if estado == estado_movelado
{
	
	if (instance_exists(obj_player))
	{
		estado_atual = choose("estado1", "estado2")
	}
}

if (estado_atual == "estado1")
{
	estado_atacando();
}
if (estado_atual == "estado2")
{
	estado_atacando2();
}

if (!instance_exists(obj_boss) and transition_seq)
{
	instance_destroy(obj_player);
	layer_sequence_create("Transitions", 288, 550, sq_transition);
	transition_seq = false;
	
}
*/


//Alternando os estados
troca_estado();

if (estado_atual == "estado1")
{
	estado_01();
	estado_dano();
}
else if (estado_atual == "estado2")
{
	estado_02();
	estado_dano();
}
else if (estado_atual == "estado3")
{
	estado_03();
	estado_dano();
}
else if (estado_atual == "estado4")
{
	estado_04();
	estado_dano();
}
x = clamp(x, 107, 468);

if (!instance_exists(obj_boss) and transition_seq)
{
	instance_destroy(obj_player);
	layer_sequence_create("Transitions", 288, 550, sq_transition);
	transition_seq = false;
	
}