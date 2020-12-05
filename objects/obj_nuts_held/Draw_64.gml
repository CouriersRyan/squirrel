/// @description Insert description here
// You can write your code in this editor
if(!global.isEnd){
	draw_set_font(fnt_gui);
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_text_ext_color(x - 45, y - 16, string(global.nuts) + "x", 1, 40, c_white, c_white, c_white, c_white, 1);
	draw_sprite_ext(sprite_index, image_index, x, y, 1.3, 1.3, 0, c_white, 1);
}