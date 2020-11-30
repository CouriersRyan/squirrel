// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_collect(){
	var inst = instance_place(x, y, object_collectible)
	if(inst){
		if(inst == object_nut){
			global.nuts++
		}
		with(inst){
			instance_destroy();
		}
	}
}