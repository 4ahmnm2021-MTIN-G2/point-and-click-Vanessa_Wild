/// @description Insert description here
// You can write your code in this editor
draw_self();
if inspect = 1{
	draw_sprite(spr_textbox,0,8,4);
	my_string = string_copy(text,1,spd);
	spd += 0.3;
	
	
	text_complete = string_length(text);

	
	draw_set_font(font_SinusSerious);
	draw_set_valign(fa_top);
	draw_set_color(c_black);
	draw_text_ext(12,0, my_string, 11, 128);
	
	
	if mouse_check_button_pressed(mb_left) {
	
		if text_complete < spd {
		
			local_textcount += 1;
			spd = 0;
		}
		else
		{
		spd = 4000	
		}
			
			if !position_meeting(mouse_x,mouse_y,self){
					inspect = 0;
			}
			else {
				
				
				if local_textcount > 3 {
					inspect = 0;
					local_textcount = 0;
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

if inspect = 0 && local_textcount > 3 {
	local_textcount = 0;
}

if local_textcount > 0 {
	global.textbox = 1;
}
if inspect = 0 {
	spd = 0;
}

draw_text(x,y,string(spd));

draw_text(x,y+10,string(text_complete))