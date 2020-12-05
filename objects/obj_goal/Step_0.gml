/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x, y, object_player)){
	with(instance_nearest(x, y, object_player)){
		isActive = false;
	}
	global.isEnd = true;
}