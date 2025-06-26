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

if paused{
	if !surface_exists(paused_surf){
	    paused_surf = surface_create(window_get_width(), window_get_height());
	    surface_set_target(paused_surf);
	    draw_surface(application_surface, 0, 0);
	    surface_reset_target();
	}else{
	    draw_surface(paused_surf, 0, 0);
	    draw_set_alpha(0.5);
	    draw_rectangle_colour(0, 0, window_get_width(), window_get_height(), c_black, c_black, c_black, c_black, false);
	    draw_set_alpha(1);
	}
}