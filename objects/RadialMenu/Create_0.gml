/// @description Insert description here
// You can write your code in this editor

menu[0] = "ATTACK"; menu[1] = "DEFEND"; menu[2] = "SKILL"; menu[3] = "ITEM"; menu[4] = "FLEE"; menu[5] = "MOVE";

function createRadialMenu(_array, _radius, _offset, _degrees) {
	
	//_array:	array of menu items
	//_radius:	circle radius
	//_offset:	how many degrees item 0 is offset from *East* (clockwise)
	//_degrees:	how many degrees between menu 0 ... k
	//_entry:	TBD menu entry object
	
	var menu = _array;
	var n = array_length(menu);
	var r = _radius;
	var deg = _degrees;
	
	for (var i = 0; i < n; i++) {
		var theta = (deg/n)*i;
		theta += _offset;
	
		var tx = x + r * cos(theta*pi/180);
		var ty = y + r * sin(theta*pi/180);
	
		var entry = instance_create_depth(tx,ty,depth-1, MenuEntry);
		entry.text = menu[i];
	}
}
	
createRadialMenu(menu, 100, -50, 180);