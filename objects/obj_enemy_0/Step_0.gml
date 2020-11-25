/// @description Insert description here
// You can write your code in this editor
var p_x = player.x;
var p_y = player.y;
var dt = delta_time;
//TODO: Implement Delta Time

switch(_state){
	//enemy behavior when state is follow
	case enemy_0_state.follow:
		var diff_x = p_x - x;
		var diff_y = p_y - y;
		//depending on distance from player, the enemy is moving towards or away from the player
		if(abs(diff_x) >= avoid_distance_x && abs(diff_x) <= follow_distance_x){
			//move towards player when between follow and avoid distance limits
			vel_x = sign(diff_x) * move_spd_x;
		} else if(abs(diff_x) > follow_distance_x){
			//stop moving when outside of follow distance
			vel_x = 0;
		} else {
			//move away from player when inside avoid distance
			vel_x = -move_spd_x * sign(diff_x);
		}
		if(abs(diff_y) >= avoid_distance_y && abs(diff_y) <= follow_distance_y){
			//see above x
			vel_y = sign(diff_y) * move_spd_y;
		} else if(abs(diff_y) > follow_distance_y){
			//see above x
			vel_y = 0;
		} else {
			//see above x
			vel_y = -move_spd_y * sign(diff_y);
		}
	break;
}

x += vel_x
y += vel_y