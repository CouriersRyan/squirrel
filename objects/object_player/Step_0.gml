/// @description Insert description here
// You can write your code in this editor

if(xspeed > 1)
{
	xspeed--;
}

else if(xspeed < -1)
{
	xspeed++;
}

else
{
	xspeed = 0;
}

if(isJump)
{
	if(yspeed >= 0)
	{
		isJump = false;
	}
}

if(keyboard_check(ord("A")))
{
	xspeed-=1.35;
}

if(keyboard_check(ord("D")))
{
	xspeed+=1.3;
}

if(keyboard_check(vk_space) && !isJump)
{
	yspeed = -10;
	y -= 10;
	isJump = true;
}



/*if(!fall)
{
	if(yspeed > 0)
	{
		sprite_index = sprite_character1_fall;
	}

	if(yspeed < 0)
	{
		sprite_index = sprite_character1;
	}
}
else
{
	sprite_index = sprite_character1_die;
}*/

yspeed += yacc * delta_time / 1000000;

if (place_meeting(x, y, object_floor)) {
		yspeed = 0;
}

y += yspeed;
x += xspeed;

/*if(x < 0)
{
	x = room_width;
}

if(x > room_width)
{
	x = 0;
}*/
