/// @description Insert description here
// You can write your code in this editor
var p_x = player.x;
var p_y = player.y - 20;
var dt = delta_time / 1000; //ms
//TODO: Implement Delta Time

event_inherited();

if(abs(x - player.x) < follow_distance_x && abs(y - player.y) < follow_distance_y){
	switch(_state){
		//enemy behavior when state is follow
		case enemy_0_state.follow:
			vel_x = sign(target_x - x) * move_spd_x * clamp(abs(target_x - x), 0, 50)/50;
			vel_y = sign(target_y - y) * move_spd_y * clamp(abs(target_y - y), 0, 50)/50;
			image_xscale = -sign(target_x - x);
			if(timer > 0) { 
				timer -= dt;
			} else if(timer <= 0){
				sprite_index = spr_normal;
				enemy_target_location(p_x, p_y);
				timer = 1000;
				attack_interval--;
				if(attack_interval <= 0){
					target_x = p_x;
					target_y = p_y;
					prev_x = x;
					_state = enemy_0_state.attack;
					sprite_index = spr_attack;
				}
			}
		break;
		case enemy_0_state.attack:
			vel_x = sign(target_x - x) * dive_spd_x * ((500 - clamp(abs(target_y - y), 0, 500))/500);
			image_xscale = -sign(target_x - x);
			vel_y = sign(target_y - y) * dive_spd_y * clamp(abs(target_y - y), 0, 50)/50;
			if(abs(target_x - x) < 32 && abs(target_y - y) < 32){
				target_x = target_x + sign(x - prev_x) * avoid_distance_x;
				target_y = target_y - avoid_distance_y;
				timer = 1000;
				_state = enemy_0_state.follow;
				attack_interval = 5;
			}
		break;
	}

	if(!place_meeting(x + vel_x, y + vel_y, object_solid)){
		x += vel_x;
		y += vel_y;
	} else {
		x -= vel_x * 3;
		y -= vel_y * 3;
		target_x = x - sign(vel_x) * move_spd_x * 3;
		target_y = y - sign(vel_y) * move_spd_y * 3;
	}

	/*if(place_meeting(x + vel_x, y + vel_y, object_enemy)){
		var random_displace_x = random_range(-move_spd_x, move_spd_x);
		var random_displace_y = random_range(-move_spd_y, move_spd_y);
		if(place_meeting(x + random_displace_x, y + random_displace_y, object_solid)){
			x += random_displace_x;
			y += random_displace_y;
		}
	}*/

	if(image_xscale == 0){
		image_xscale = 0.5;
	}
}