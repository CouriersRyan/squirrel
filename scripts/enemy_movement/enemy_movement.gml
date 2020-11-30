// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_target_location(p_x, p_y){
	if(x > p_x)
		target_x = floor(random_range(x - 100, p_x + avoid_distance_x));
	else if(x < p_x){
		target_x = floor(random_range(x + 100, p_x - avoid_distance_x));
	}
	target_y = floor(random_range(p_y - avoid_distance_y - 100, p_y - avoid_distance_y));
}

function enemy_path_target(){
	
}