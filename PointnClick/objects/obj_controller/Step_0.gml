if position_meeting(mouse_x,mouse_y,obj_HoverParent) {
	global.playerlock = 1;
	if !keyboard_check(vk_control) {
		cursor_sprite = spr_cursor_eye;
	}
	else {
		cursor_sprite = spr_cursor_hand;
	}
}
else {
	cursor_sprite = spr_cursor_arrow;
	global.playerlock = 0;
}