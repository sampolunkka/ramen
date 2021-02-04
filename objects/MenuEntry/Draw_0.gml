/// @description Insert description here
// You can write your code in this editor
/*
w = string_width(text);
h = string_height(text);
ho = h/2;
wo = w/2;
draw_rectangle_color(x-wo,y-ho,x+wo,y+ho, c_teal, c_aqua, c_black, c_black, false);
draw_set_color(c_black);
draw_text(x+2-w/2, y-2-h/2+1, text);
draw_set_color(c_white);
draw_text(x-w/2, y-h/2, text);
*/

draw_rectangle_color(x1,x2,y1,y2, c_teal, c_aqua, c_black, c_black, false);
draw_set_color(c_black);
draw_text(x+2-w/2, y-2-h/2+1, text);
draw_set_color(c_white);
draw_text(x-w/2, y-h/2, text);