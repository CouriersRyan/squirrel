/// @description Insert description here
// You can write your code in this editor
enum enemy_0_state {
	follow,
	attack
}

_state = enemy_0_state.follow;

player = instance_nearest(x, y, object_player);

timer = 0;

attack_interval = 4;

ds_list_add(global.enemy_list, self);