/// @description Insert description here
// You can write your code in this editor
var p_x = player.x;
var p_y = player.y;
var dt = delta_time / 1000; //ms
//TODO: Implement Delta Time

switch(_state){
	//enemy behavior when state is follow
	case enemy_0_state.follow:
		image_xscale = sign(path_speed);
		if(timer > 0) { 
			timer -= dt;
		} else if(timer <= 0){
			path_positionprevious = path_position;
			timer = 750;
			if(random_range(0, 3) > 2){
				path_speedprevious = path_speed;
				path_speed = 0;
				_state = enemy_0_state.attack;
				sprite_index = spr_attack;
				timer = 100;
			}
		}
	break;
	case enemy_0_state.attack:
		if(timer > 0) { 
			timer -= dt;
		}else{
			instance_create_layer(x, y, "Instances", object_enemy_bullet);
			sprite_index = spr_normal;
			_state = enemy_0_state.follow;
			path_position = path_positionprevious;
			path_speed = path_speedprevious;
			timer = 1000;
		}
	break;
}

x += vel_x
y += vel_y