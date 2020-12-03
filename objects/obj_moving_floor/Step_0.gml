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

