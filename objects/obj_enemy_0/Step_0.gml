/// @description Insert description here
// You can write your code in this editor
var p_x = player.x;
var p_y = player.y;
var dt = delta_time / 1000; //ms
//TODO: Implement Delta Time

switch(_state){
	//enemy behavior when state is follow
	case enemy_0_state.follow:
		vel_x = sign(target_x - x) * move_spd_x * clamp(abs(target_x - x), 0, 50)/50;
		vel_y = sign(target_y - y) * move_spd_y * clamp(abs(target_y - y), 0, 50)/50;
		image_xscale = sign(vel_x);
		if(timer > 0) { 
			timer -= dt;
		} else if(timer <= 0){
			enemy_target_location(p_x, p_y);
			timer = 1000;
			if(random_range(0, 4) > 3){
				target_x = p_x;
				target_y = p_y;
				prev_x = x;
				_state = enemy_0_state.attack;
				sprite_index = spr_attack;
			}
		}
	break;
	case enemy_0_state.attack:
		vel_x = sign(target_x - x) * dive_spd_x;
		image_xscale = sign(vel_x);
		vel_y = sign(target_y - y) * dive_spd_y * clamp(abs(target_y - y), 0, 50)/50;
		if(abs(target_x - x) < 32 && abs(target_y - y) < 32){
			target_x = target_x + sign(x - prev_x) * avoid_distance_x;
			target_y = target_y - 100;
			timer = 1000;
			_state = enemy_0_state.follow;
			sprite_index = spr_normal;
		}
	break;
}

x += vel_x
y += vel_y