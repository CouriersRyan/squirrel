if (place_meeting(x,y+1,object_floor))
{
	if (!audio_is_playing(snd_footSteps)){
	//player_action_sound(snd_squirrel_cry);
		audio_play_sound(snd_footSteps, 1, true);
	}
}