


if position_meeting(mouse_x,mouse_y,self) {
	
	if keyboard_check(vk_control) {
		mouseover = 2;
	}
	else
	{
		mouseover = 1;
		if mouse_check_button_pressed(mb_left) {
			inspect = 1;
		}
	}
}
else {
	mouseover = 0;
}

if mouseover > 0 {
	image_index = 1;
}
else {
	image_index = 0;
}