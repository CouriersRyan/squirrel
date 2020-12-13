/// @description Insert description here
// You can write your code in this editor
var inst = instance_place(x, y, object_solid);
if(inst && inst.bbox_top > y){
	if(inst.object_index == obj_moving_floor){
		show_debug_message("Hello");
		x += inst.movingLeft ? -3 : 3;
	}
} else {
	y += 3;
}

if(distance_to_object(object_player) > 900 && from_bullet){
	var instP = instance_nearest(x, y, object_player);
	y = instP.y;
	x = instP.x;
}


/*
if (instance_place(x,y, object_player)) && (key_jump)
{
	audio_play_sound(snd_nut, 1, false);
}
