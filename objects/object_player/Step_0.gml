/// @description Insert description here
// You can write your code in this editor
if(isActive){
	//Get Player Input
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);
} else {
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}


var hsp_final = hsp + hsp_carry;
hsp_carry = 0;
//Calculate Movement
var move = key_right - key_left;

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
	vsp = -14.4;
	//player_action_sound(snd_squirrel_cry);
	audio_play_sound(snd_jump, 1, false);
}

if (place_meeting(x,y+1,obj_moving_floor)) && (key_jump)
{
	vsp = -14.4;
	//player_action_sound(snd_squirrel_cry);
	audio_play_sound(snd_jump, 1, false);
}



//Horizontal Collision
if (place_meeting(x+hsp_final,y,object_floor))
{
	while (!place_meeting(x+sign(hsp_final),y,object_floor))
	{
		x = x + sign(hsp_final);
	}
	hsp_final = 0;
	dir *= -1;
}



if (place_meeting(x+hsp_final,y,obj_moving_floor))
{
	while (!place_meeting(x+sign(hsp_final),y,obj_moving_floor))
	{
		x = x + sign(hsp_final);
	}
	hsp_final = 0;
	dir *= -1;
}


x = x + hsp_final;

//Vertical Collision
if (place_meeting(x,y+vsp,object_solid) )
{
	if (!place_meeting(x,y+sign(vsp),object_solid))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}


/*if (place_meeting(x,y+vsp,obj_moving_floor) )
{
	if (!place_meeting(x,y+sign(vsp),obj_moving_floor))
	{
		y = y + sign(vsp);
	}
	var instMF = instance_nearest(x, y, obj_moving_floor)
	if(!(instMF.bbox_left > bbox_right || instMF.bbox_right < bbox_left)){
		
	}
	vsp = 0;
}*/

y = y + vsp;

//Animation
if(global.isEnd){
	sprite_index = spr_playergoal;
	image_speed = 1;
} else if((sprite_index == spr_playerthrow || sprite_index == spr_playerhurt) && image_index < 4){
	
} else {
	if (place_meeting(x,y+1,object_solid))
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
	else
	{
		sprite_index = spr_playerjump;
		//if (sign(vsp) > 0) image_index = 1; else image_index = 0;
		player_walk_sound(false);
	}
}


if (hsp != 0) image_xscale = sign(hsp);

if(keyboard_check_pressed(ord("J")))
{
	if(global.nuts > 0)
	{
		player_action_sound(snd_squirrel_bark);
		sprite_index = spr_playerthrow;
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

if (place_meeting(x, y, object_enemy)) {
	if(!isHit)
	{
		global.player_health--;
		audio_play_sound(snd_squirrel_cry, 1, false);
		isHit = true;
		alarm[0] = 100;
	}
}

if (place_meeting(x, y, obj_trap)) {
	if(!isHit)
	{
		global.player_health--;
		isHit = true;
		alarm[0] = 100;
		sprite_index = spr_playerhurt;
	}
}

if (place_meeting(x, y, object_enemy_bullet)) {
	if(!isHit)
	{
		global.player_health--;
		audio_play_sound(snd_squirrel_cry, 1, false);
		isHit = true;
		alarm[0] = 100;
		sprite_index = spr_playerhurt;
	}
}

if(isHit == true){
	hit_timer -= delta_time;
	if(hit_timer <= 0){
		if(image_alpha == 1) image_alpha = 0;
		else image_alpha = 1;
		hit_timer = 100000;
	}
}

player_collect();

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

if(y > startPos+1000)
{
	room_goto(GameOver);
}