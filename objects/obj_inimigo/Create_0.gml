/// @description Insert description here
// You can write your code in this editor

vspeed = 1;
pontos = 10;
//Defininido a minha posição na room
x = irandom(8) * sprite_width;

//Checando se eu estou em cima de outro inimigo
if (place_meeting(x, y, obj_inimigo))
{
	instance_destroy();
}




