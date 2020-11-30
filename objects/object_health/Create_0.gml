/// @description Insert description here
// You can write your code in this editor
show_debug_message("here");

ls_hp = ds_list_create();

y = 40;
x = 0;

for (i = 0; i < global.player_health; i++){
	x = 40 + 70 * i;
	ds_list_add(ls_hp, instance_create_layer(x, y, "UI", heart));
	ls_hp[|i].hp_threshold = i + 1;
	show_debug_message("la");
}