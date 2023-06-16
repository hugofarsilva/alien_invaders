/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player)
{
	draw_set_halign(fa_top);
	draw_set_valign(fa_left);
	draw_set_font(fnt_gui);
	draw_text(20, 40, "level: " + string(global.level));
	draw_text(20, 60, "pontos: " + string(pontos));
	draw_text(20, 80, "record: " + string(global.pontos));
	draw_set_font(-1);
	draw_set_align();
}



