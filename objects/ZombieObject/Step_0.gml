/// @description Insert description here
// You can write your code in this editor


if physics_test_overlap(x, y, 0, Object2){
	if (phy_rotation < 0.1 ) and (phy_rotation > -0.7){
		phy_speed_x = 6;
		phy_fixed_rotation = false;

	} else {
		phy_rotation = 0;
	} 
	
}
