/// @description Insert description here
// You can write your code in this editor
var inst = instance_place(x, y, object_solid);
if(inst && inst.bbox_top > y){
	if(inst.object_index == obj_moving_floor){
		show_debug_message("Hello");
		x += inst.movingLeft ? -3 : 3;
	}
	if (alarm[0] < 0) alarm[0] = 100;
} else {
	y += 3;
}