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
var _heroes = ds_list_create();
var _heroList = collision_circle_list(x, y, 300, BaseHero, false, true, _heroes, true);

if (_heroList > 0) {
	zombie_speed = zombie_run;
	
	var zombieDiff = _heroes[| 0].x - x;
	if (zombieDiff > 3) {
		show_debug_message("Hero at:");
	show_debug_message(_heroes[| 0].x);
	show_debug_message("Zombie at:");
	show_debug_message(x);
		 currrent_direction = "right";
		 image_xscale = 1;
	} else if ( zombieDiff < 0 ){
		currrent_direction = "left";
		image_xscale = -1;
	}  else if( zombieDiff <= 3 ) and ( zombieDiff >= 0 ){
		 zombie_move = false;
	};
	zombie_following = true;
} else {
	zombie_speed = zombie_walk;
	zombie_following = false;
};

ds_list_destroy(_heroes);

if (zombie_move ) {
	image_speed = 1;
	if ( currrent_direction == "right"){
		x = x+zombie_speed;
	}
	else if ( currrent_direction == "left"){
		x= x-zombie_speed;
	}
} else {
	image_speed = 0;
};


if ( place_meeting(bbox_right, y, BaseWall)) and (currrent_direction=="left"){
	zombie_move = false;
	if !(zombie_following){
		block_counter = block_counter +1;
		if (block_counter > 20){
			image_xscale = 1;
			currrent_direction = "right";
			zombie_move = true;
			block_counter = 0;
		};
	};
	
};

if (place_meeting(bbox_left, y, BaseWall)) and (currrent_direction=="right"){
	zombie_move = false;
	if !(zombie_following){
		block_counter = block_counter +1;
		if (block_counter > 20){
			image_xscale = -1;
			currrent_direction = "left";
			zombie_move = true;
			block_counter = 0;
		};
	};
};





