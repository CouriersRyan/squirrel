/// @description Insert description here
// You can write your code in this editor
ds_list_delete(global.enemy_list, ds_list_find_index(global.enemy_list, self));
if(global.active_bird == self){
	global.active_bird = noone;
}