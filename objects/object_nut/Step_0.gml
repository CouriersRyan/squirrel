/// @description Insert description here
// You can write your code in this editor
var inst = instance_place(x, y, object_floor);
if(inst && inst.bbox_top > y){
	
}else {
	y += 3;
}

if(distance_to_object(object_player) > 900 && from_bullet){
	var instP = instance_nearest(x, y, object_player);
	y = instP.y;
	x = instP.x;
}