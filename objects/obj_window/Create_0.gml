/// @description 

instance_deactivate_all(true);

var camera = (view_get_camera(0)); 

var guiWidth = camera_get_view_width(camera);
var guiHeight = camera_get_view_height(camera);

width = guiWidth;
height = floor(guiHeight * 0.40);

x = camera_get_view_x(camera);
y = camera_get_view_y(camera) + guiHeight - height;

image_xscale = width / sprite_width;
image_yscale = height / sprite_height;

padding = 8;

//originalText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
originalText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam";

messageText = "";
messageChar = 0;
messageSpeed = 0.3;