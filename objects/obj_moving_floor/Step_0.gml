
if (movingLeft == true ){
	spd = 3;
}

if (movingLeft == false){
	spd = -3;
}


if (x <= 100&& movingLeft == true){
	movingLeft = false;
}

if (x >= 1350 && movingLeft == false){
	movingLeft = true;
}

if (place_meeting(x + sprite_width/2, y, object_floor) && movingLeft == false){
	movingLeft = true;
}

if (place_meeting(x - sprite_width/2, y, object_floor) && movingLeft == true){
	movingLeft = false;
}



if (place_meeting(x,y-1,object_player) && movingLeft == false){
	object_player.hsp_carry = 3;
}
else  if (place_meeting(x,y-1,object_player) && movingLeft == true){
	object_player.hsp_carry = -3;
}

/*if (instance_exists(object_player)){
	if(round(object_player.y + (object_player.sprite_height/2)) < y){
	mask_index = -1
	}else{
	mask_index = spr_movingFloor;
	}

}*/
x -= spd;
/*
if (place_meeting(x + obj_moving_floor.sprite_width/2+ spd, y, obj_floor)){
	if (movingLeft = false){
		movingLeft = true;
	}else if (movingLeft = true){
		movingLeft = false;

	}
}

*/



//+ object_player.sprite_height


/*
if (instance_exists(object_player)){
	if ( round (object_player.y + (object_player.sprite_height/2)) <y){
		mask_index = -1;
	}else {
		mask_index = spr_movingFloor;
	}


}
