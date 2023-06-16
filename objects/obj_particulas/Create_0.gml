/// @description Insert description here
// You can write your code in this editor

#region Sistema de Partículas

//Criando o sistema de partículas
part_sys = part_system_create();

//Criando o emmiter
em = part_emitter_create(part_sys);

//Criando a partícula
part = part_type_create();

part_type_sprite(part, spr_particula, 0, 0, 0);

//Melhorando o efeito da partícula
part_type_speed(part, 5, 10, 0.05, 0);
part_type_direction(part, 0, 359, 0, 0);
part_type_size(part, 1, 3, -0.03, 0);
part_type_color3(part, c_red, c_orange, c_yellow);
part_type_blend(part, true);
part_type_alpha3(part, 1, .7, 0);
part_type_life(part, room_speed, room_speed*3);


#endregion

cria_explosao = function(_x, _y)
{
	//Criando a explosão na posição correta
	part_emitter_region(part_sys, em, _x - 10, _x + 10, _y - 10, _y + 10, ps_shape_diamond, ps_distr_gaussian);
	//Criando a explosão
	part_emitter_burst(part_sys, em, part, 50);
}






