/// @description Insert description here
// You can write your code in this editor

function CameraMovement()
{
	camera_get_view_x(view_camera[0]) // gets cam x pos
	camera_get_view_y(view_camera[0]) // gets cam y pos
	camera_get_view_width(view_camera[0]) // gets cam width
	camera_get_view_height(view_camera[0]) // gets cam height

	var cwidth = camera_get_view_width(view_camera[0]);
	var cheight = camera_get_view_height(view_camera[0]);
	camera_set_view_pos(view_camera[0],x-cwidth/2, 0);

// sets camera position; x & y are the object position default variables
}

CameraMovement();