/// @description Insert description here
// You can write your code in this editor

startPos = y;

//xspeed = 0;
//yspeed = 0;

//yacc = 10;

//isJump = false;
dir = 0;

hsp = 0;
vsp = 0;
grv = 0.5;
walksp = 4;

isHit = false;

depth = -10;

global.isVerticalLevel = false;

cam = view_camera[0];
follow = object_player;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;
