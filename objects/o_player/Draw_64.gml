up = false;
if draw_sprite_button(0.2,0.8, s_up) || keyboard_check(ord("W")){
	up = true;
}


down = false;
if draw_sprite_button(0.2,0.9, s_down) || keyboard_check(ord("S")){
	down = true;
}



left = false;
if draw_sprite_button(0.15,0.85, s_left) || keyboard_check(ord("A")){
	left = true;
}



right = false;
if draw_sprite_button(0.25,0.85, s_right) || keyboard_check(ord("D")){
	right = true;
}


flash = false;
if draw_sprite_button(0.9,0.85, s_flash_button) || keyboard_check(ord("F")){
	flash = true;
}



















