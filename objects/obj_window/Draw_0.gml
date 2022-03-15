/// @description 

draw_self();

// Draw position
var drawX = x + padding;
var drawY = y + padding;

// Get maximum width for text
var maxW = width - padding * 2;

// Set text font
draw_set_font(fnt_font_1);
// Text color
// @todo Find matching color
draw_set_color(c_white);

draw_text_ext(drawX, drawY, messageText, -1, maxW);
//draw_text_ext_transformed(drawX, drawY, messageText, -1, maxW, 0.5, 0.5, 0);
// Text color
draw_set_color(c_white);