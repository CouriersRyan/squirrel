x -= spd;
if (movingLeft == true ){
	spd = 3;
}

if (movingLeft == false){
	spd = -3;
}


if (x <= 10 && movingLeft == true){
	movingLeft = false;
}

if (x >= 1366 && movingLeft == false){
	movingLeft = true;
}

/*
if (place_meeting(x + obj_moving_floor.sprite_width/2+ spd, y, obj_floor)){
	if (movingLeft = false){
		movingLeft = true;
	}else if (movingLeft = true){
		movingLeft = false;

	}
}

*/


if round (object_player.y + object_player.sprite_height > y){
	mask_index = -1;
	show_debug_message("it's below!");

}else if round (object_player.y + object_player.sprite_height > y){
	mask_index = obj_moving_floor;

}
