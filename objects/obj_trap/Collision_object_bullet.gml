if (gotHit = false){
audio_play_sound(snd_explosion, 1, false);
}
gotHit = true;
sprite_index = spr_explosion;
alarm_set(0, 20);