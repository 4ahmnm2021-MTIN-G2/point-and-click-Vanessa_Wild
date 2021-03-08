/// @description Insert description here
// You can write your code in this editor
draw_self();
if object_lookat = 1{
	draw_sprite(spr_textbox,0,8,4);
	my_string = string_copy(text,1,global.spd);
	global.spd += 0.3;
	
	text_complete = string_length(text);
	
	
	draw_set_font(font_SinusSerious);
	draw_set_valign(fa_top);
	draw_set_color(c_black);
	draw_text_ext(12,0, my_string, 11, 128);
	
	if string_length(my_string) >= text_complete {
		if mouse_check_button_pressed(mb_left) {
			
			local_textcount += 1;
			global.spd = 0;
			
			if !position_meeting(mouse_x,mouse_y,self){
				object_lookat = 0;
				global.playerlock = 0;

			}
			else {

				if local_textcount > 3 {
					object_lookat = 0;
					global.playerlock = 0;
					local_textcount = 0;
				}
			}
		}
	}


}


if local_textcount = 0 {
	text = look_0;
}
if local_textcount = 1 {
	text = look_1;
}
if local_textcount = 2 {
	text = look_2;
}
if local_textcount = 3 {
	text = look_3;
}

if object_lookat = 0 && local_textcount >= 3 {
	local_textcount = 0;
}