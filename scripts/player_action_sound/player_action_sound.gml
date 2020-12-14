// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_action_sound(_snd){
	audio_stop_sound(snd_squirrel_bark);
	audio_stop_sound(snd_squirrel_cry);
	audio_play_sound(_snd, 5, false);
}

function player_walk_sound(_bool){
	if(!audio_is_playing(snd_footSteps) && _bool){
		audio_play_sound(snd_footSteps, 3, true);
	} else if(audio_is_playing(snd_footSteps) && !_bool){
		audio_stop_sound(snd_footSteps);
	}
}