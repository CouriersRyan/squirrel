/// @description Insert description here
// You can write your code in this editor
var dt = delta_time / 1000000;

_accelY = _gravity * dt/1 * _gravityModifier;

_velY += _accelY;

var new_y = y + _velY;
var new_x = x;
if(dir = 0)
{
	new_x+=5;
	image_angle -= 15;
}
else
{
	new_x-=5;
	image_angle += 15;
}

var instanceP = instance_place(new_x, new_y, object_nonplayer_physical)
if(instanceP){
	object_bounce(instanceP, _bounce_vel_y);
	hp--;
	if(object_is_ancestor(instanceP.object_index, object_enemy)){
		show_debug_message("Hello");
		instanceP.hp--;
	}
}

if(hp <= 0){
	instance_destroy();
}

if(player_buffer > 0){
	player_buffer -= delta_time / 1000
}else if(place_meeting(x, y, object_player)){
	instance_destroy();
}

x = new_x;
y = new_y;