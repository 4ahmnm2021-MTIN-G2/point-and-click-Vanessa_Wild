if global.playerlock = 0 and global.textbox = 0{	
	if mouse_check_button_pressed(mb_left){
	mX = mouse_x;
	mY = mouse_y;
	}
}

	if point_distance(mX,mY,x,y) >= spd{
	    move_towards_point(mX,mY,spd);
	}
	if point_distance(mX,mY,x,y) < spd{
	    move_towards_point(mX, mY, point_distance(mX,mY,x,y));
	}

