// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_collect(){
	var inst = instance_place(x, y, object_nut)
	if(inst){
		global.nuts++;
		with(inst){
			audio_play_sound(snd_nut, 1, false);
			instance_destroy();
		}
	}
} 