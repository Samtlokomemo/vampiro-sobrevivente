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
	draw_text_transformed(window_get_width() / 2, window_get_height() / 2, "GAME OVER", 3, 3, 0);
	
	draw_set_alpha(alpha);
	draw_text(window_get_width() / 2, window_get_height() / 2 + 40, "press R to play again");
}

if global.levelup{
    draw_set_font(fntArial);
    draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
    draw_set_color(c_white);
    draw_set_alpha(1);
    
    draw_text_transformed(window_get_width() / 2, 100, "Choose a Bless", 3, 3, 0);
}else{
    //HP BAR
    draw_healthbar(5, 5, 200, 30, oPlayer.life, c_black, c_maroon, c_green, 0, true, true)
    //XP BAR
    draw_healthbar(window_get_width() / 2 + 200, window_get_height() / 2 + 200, window_get_width() / 2 - 200, window_get_height() / 2 + 220, oPlayer.xp, c_black, c_green, c_lime, 1, true, true)
}
