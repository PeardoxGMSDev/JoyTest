if(keyboard_check_pressed(vk_escape)) {
	game_end();
}

if(keyboard_check_direct(ord("A"))) {
	x--;
}

if(keyboard_check_direct(ord("D"))) {
	x++;
}

if(keyboard_check_direct(ord("W"))) {
	y++;
}

if(keyboard_check_direct(ord("S"))) {
	y--;
}

if(keyboard_check_direct(vk_up)) {
	z++;
}

if(keyboard_check_direct(vk_down)) {
	z--;
}