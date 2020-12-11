/// @description Insert description here
// You can write your code in this editor
var dt = delta_time / 1000; //ms
//TODO: Implement Delta Time

event_inherited();

switch(_state){
	//enemy behavior when state is follow
	case enemy_1_state.follow:
		image_xscale = -sign(path_speed);
		if(timer > 0) { 
			timer -= dt;
			prev_spd = noone;
		} else if(timer <= 0){
			timer = 750;
			if(random_range(0, 3) > 2){
				prev_spd = path_speed;
				show_debug_message("set speed: " + string(prev_spd))
				path_speed = 0;
				_state = enemy_1_state.attack;
				timer = 100;
			}
		}
	break;
	case enemy_1_state.attack:
		if(timer > 0) { 
			path_speed = 0;
			timer -= dt;
		}else{
			instance_create_layer(x, y, "Instances", object_enemy_bullet);
			_state = enemy_1_state.follow;
			show_debug_message(prev_spd);
			path_speed = prev_spd;
			timer = 1000;
		}
	break;
}