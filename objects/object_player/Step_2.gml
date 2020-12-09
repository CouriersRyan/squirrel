/// @description Insert description here
// You can write your code in this editor

function VerticalCam()
{
	if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;

}

xPos = x;
yPos = y;

//Update object position
xPos += (xTo - x) / 15;
yPos += (yTo - y) / 15;

//Keep camera center inside room
xPos = clamp(xPos,view_w_half,room_width-view_w_half);
yPos = clamp(yPos,0,room_height-view_h_half);

//Update camera view
camera_set_view_pos(cam,xPos-view_w_half,yPos-view_h_half);
}


function CameraMovement()
{
	camera_get_view_x(view_camera[0]) // gets cam x pos
	camera_get_view_y(view_camera[0]) // gets cam y pos
	camera_get_view_width(view_camera[0]) // gets cam width
	camera_get_view_height(view_camera[0]) // gets cam height

	var cwidth = camera_get_view_width(view_camera[0]);
	var cheight = y*1.3;
	
	
	camera_set_view_pos(view_camera[0],x-cwidth/2,y-cheight/1.3);
	

// sets camera position; x & y are the object position default variables
}

player_collect();
if(global.isVerticalLevel)
{
	VerticalCam();
}
else
{
	CameraMovement();
}
