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


if(keyboard_check(ord("A")))
{
	xspeed-=1.35;
	dir = 1;
}

if(keyboard_check(ord("D")))
{
	xspeed+=1.3;
	dir = 0;
}

if(keyboard_check(vk_space) && !isJump)
{
	yspeed = -10;
	y -= 10;
	isJump = true;
	player_action_sound(snd_squirrel_cry);
}

if(mouse_check_button_pressed(mb_left))
{
	if(global.nuts > 0)
	{
		player_action_sound(snd_squirrel_bark);
		if(dir = 1)
		{
			newBullet = instance_create_layer(x-10,y,"Instances",object_bullet);
			newBullet.dir = 1;
		}
		else
		{
			newBullet = instance_create_layer(x+10,y,"Instances",object_bullet);
		}
		global.nuts--;
	}
	
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
		isJump = false;
		if(abs(xspeed) > 0){
			player_walk_sound(true);
		} else {
			player_walk_sound(false);
		}
} else {
	player_walk_sound(false);
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
