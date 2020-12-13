/// @description Insert description here
// You can write your code in this editor

global.oldPlayer_health = global.player_health;


if(!global.active_bird){
	audio_stop_sound(snd_bird_flap);
	for(i = 0; i < ds_list_size(global.enemy_list); i++){
		if(global.enemy_list[|i].active == true){
			global.active_bird = global.enemy_list[|i];
			audio_play_sound(snd_bird_flap, 1, true);
			break;
		}
	}
}

if(global.player_health == 0)
{
	room_goto(GameOver);
}

if audio_is_playing(BGM) == false
{
      audio_play_sound(BGM, 1, true);
}