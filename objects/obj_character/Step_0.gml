/// @description

// Disallow rotating
phy_rotation = 0;

if (direction >= 135 && direction <= 225) {
	image_xscale = -1;
}
else {
	image_xscale = 1;
}