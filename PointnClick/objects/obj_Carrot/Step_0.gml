// Inherit the parent event
	if position_meeting(mouse_x,mouse_y,self){
	image_index = 1;
	cursor_sprite = spr_cursor_eye;
}
if !position_meeting(mouse_x,mouse_y,self){
	image_index = 0;
	cursor_sprite = spr_cursor_arrow;
}
if keyboard_check(vk_control) && position_meeting(mouse_x,mouse_y,self){
	cursor_sprite = spr_cursor_hand;
	if mouse_check_button_pressed(mb_left){
		object_take = 1;
	}
}
if !keyboard_check(vk_control) && position_meeting(mouse_x,mouse_y,self){
	cursor_sprite = spr_cursor_eye;
	if mouse_check_button_pressed(mb_left){
		object_lookat = 1;
	}
}
if !keyboard_check(vk_control) && !position_meeting(mouse_x,mouse_y,self){
	cursor_sprite = spr_cursor_arrow;
}



