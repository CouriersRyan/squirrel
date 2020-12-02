/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_gui);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text_ext_color(x - 40, y, string(global.nuts) + "x", 1, 40, c_white, c_white, c_white, c_white, 1);
draw_sprite_ext(sprite_index, image_index, x, y, 1.3, 1.3, 0, c_white, 1);