if(global.gameover){
	draw_set_font(fntArial);
	draw_set_color(c_black);		
	draw_set_alpha(.7);
	draw_rectangle(0, 0, window_get_width(), window_get_height(), false);
	
	instance_deactivate_all(true);	
	
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text_transformed(wi
	ndow_get_width() / 2, window_get_height() / 2, "GAME OVER", 3, 3, 0);
	
	draw_set_alpha(alpha);
	draw_text(window_get_width() / 2, window_get_height() / 2 + 40, "press R to play again");
}