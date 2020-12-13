/// @description Insert description here
// You can write your code in this editor
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_set_font(fnt_title)
draw_text_transformed_color(1366/2, 150/2,"SQUIRREL: THE END",1,1,0,c_white,c_white,c_white,c_white,1);
draw_set_font(fnt_gui)
draw_text_transformed_color(1366/2, 400/2,"CREATED BY TEAM SQUIRREL",1,1,0,c_white,c_white,c_white,c_white,1);
draw_text_transformed_color(1366/2, 500/2,"HANSEN GUO, KEVIN LONG, VERONICA QU, RYAN ZHANG",1,1,0,c_white,c_white,c_white,c_white,1);

if(global.isEnd){
	draw_set_alpha(fade);
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, 0);
	fade += 0.01 * (1 + fade);
	draw_set_color(c_white);
	draw_set_alpha(1);
	if(fade >= 1 && alarm[0] < 0) alarm[0] = 10;
}
if(global.isStart){
	draw_set_alpha(fade);
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, 0);
	fade -= 0.05 * (1 + fade);
	draw_set_color(c_white);
	draw_set_alpha(1);
	if(fade <= 0) global.isStart = false;
}