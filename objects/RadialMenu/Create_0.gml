/// @description Insert description here
// You can write your code in this editor
radius = 100; alpha = 0;
offset = -90;
degrees = 360;

event_user(0);

function createRadialMenu(_array, _radius, _offset, _degrees) {
	instance_destroy(MenuEntry);
	//_array:	array of menu items
	//_radius:	circle radius
	//_offset:	how many degrees first item is offset from 0 (clockwise)
	//_degrees:	how many degrees between entry 0 ... k
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
	
		var entry = instance_create_depth(tx, ty, depth-1, MenuEntry);
		//entry.text = menu[i];
		entryChangeText(menu[i]);
	}
}

createRadialMenu(menu, radius, offset, degrees);