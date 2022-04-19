/// @description Zombie base step
// You can write your code in this editor


if !(place_meeting(x, bbox_top, BaseWall)) {
	zombie_move = false;
	y = y+6;
} else if (block_counter == 0) {
	zombie_move = true;
} else {
	zombie_move = false;
};

if (zombie_move ) {
	image_speed = 1;
	if ( currrent_direction == "right"){
		x = x+5;
	}
	else if ( currrent_direction == "left"){
		x= x-5;
	}
} else {
	image_speed = 0;
};

if ( place_meeting(bbox_right, y, BaseWall)) and (currrent_direction=="left"){
	show_debug_message("left blocked");
	zombie_move = false;
	block_counter = block_counter +1;
	if (block_counter > 20){
		image_xscale = 1;
		currrent_direction = "right";
		zombie_move = true;
		block_counter = 0;
	}
	
};

if (place_meeting(bbox_left, y, BaseWall)) and (currrent_direction=="right"){
	show_debug_message("right blocked");
	zombie_move = false;
	block_counter = block_counter +1;
	if (block_counter > 20){
		show_debug_message(block_counter);
		image_xscale = -1;
		currrent_direction = "left";
		zombie_move = true;
		block_counter = 0;
	}
};






