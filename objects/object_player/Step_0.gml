/// @description Insert description here
// You can write your code in this editor
//Get Player Input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

//Calculate Movement
var move = key_right - key_left;

show_debug_message(move);

if(image_xscale < 0)
{
	dir = 1;
}
else
{
	dir = 0;
}

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,object_floor)) && (key_jump)
{
	vsp = -9;
	player_action_sound(snd_squirrel_cry);
}

//Horizontal Collision
if (place_meeting(x+hsp,y,object_floor))
{
	while (!place_meeting(x+sign(hsp),y,object_floor))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,object_floor))
{
	while (!place_meeting(x,y+sign(vsp),object_floor))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Animation
if (!place_meeting(x,y+1,object_floor))
{
	sprite_index = spr_player;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
	player_walk_sound(false);
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_player;
		player_walk_sound(false);
	}
	else
	{
		sprite_index = spr_playerwalk;
		player_walk_sound(true);
	}
}

if (hsp != 0) image_xscale = sign(hsp);

if(mouse_check_button_pressed(mb_left))
{
	if(global.nuts > 0)
	{
		player_action_sound(snd_squirrel_bark);
		if(dir = 1)
		{
			newBullet = instance_create_layer(x-10,y-40,"Instances",object_bullet);
			newBullet.dir = 1;
		}
		else
		{
			newBullet = instance_create_layer(x+10,y-40,"Instances",object_bullet);
		}
		global.nuts--;
	}
	
}
/*
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
*/


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
/*
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

*/
/*if(x < 0)
{
	x = room_width;
}

if(x > room_width)
{
	x = 0;
}*/