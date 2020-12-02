// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function object_bounce(_other, _y_speed){
	if(y > _other.bbox_bottom){
		_velY = _y_speed;
	}else if(y < _other.bbox_top){
		_velY = -_y_speed;
	}
	if(x > _other.bbox_right){
		dir = 0;
	}else if(x < _other.bbox_left){
		dir = 1;
	}
}