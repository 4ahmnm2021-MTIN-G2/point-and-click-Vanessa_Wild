if instance_exists(obj_Story){
	
	my_string = string_copy(story,1,spd);
	spd += 0.3;
	
	draw_set_font(font_SinusSerious);
	draw_set_valign(fa_top);
	draw_set_color(c_black);
	draw_text_ext(15,4.5, my_string, 11, 120);

}