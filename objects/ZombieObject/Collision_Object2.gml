/// @description Insert description here
// You can write your code in this editor


if ( place_meeting(x, y+(bbox_bottom+1), Object2)){
	zombie_move = false;
	y = y-1;
} else {
	zombie_move = true;
};

if zombie_move {
	if ( currrent_direction == "right"){
		x = x+1;
	}
	else if ( currrent_direction == "left"){
		x= x-1;
	}
} else {
	image_speed = 0;
};

if !( place_meeting(bbox_left+1, y, Object2)){
	show_debug_message("left blocked");
	image_xscale = 1;
	currrent_direction = "right";
};

if !(place_meeting(bbox_right+1, y, Object2)){
	show_debug_message("right blocked");
	image_xscale = -1;
	currrent_direction = "left";
};
