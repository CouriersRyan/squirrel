/// @description Insert description here
// You can write your code in this editor
if(global.isEnd){
	draw_set_alpha(fade);
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, 0);
	fade += 0.01 * (1 + fade);
	draw_set_color(c_white);
	draw_set_alpha(1);
	if(fade >= 1 && alarm[0] < 0) alarm[0] = 10;
}