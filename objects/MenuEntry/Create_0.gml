/// @description Insert description here
// You can write your code in this editor
text = "TEXT";
	w = string_width(text);
	h = string_height(text);
	ho = h/2;
	wo = w/2;
	x1 = x-wo;
	x2 = x+wo;
	y1 = y-ho;
	y2 = y+ho;


function entryChangeText(_Entry, _string) {
	_Entry.text = _string;
	initMenuEntry(_Entry);
}

function initMenuEntry(_Entry) {
	_Entry.w = string_width(text);
	_Entry.h = string_height(text);
	_Entry.ho = h/2;
	_Entry.wo = w/2;
	_Entry.x1 = x-wo;
	_Entry.x2 = x+wo;
	_Entry.y1 = y-ho;
	_Entry.y2 = y+ho;
}