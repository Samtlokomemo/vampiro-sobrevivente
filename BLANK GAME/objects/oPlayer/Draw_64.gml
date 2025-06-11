draw_healthbar(5, 5, 200, 30, life, c_black, c_maroon, c_green, 0, true, true)
//XP BAR

draw_healthbar(window_get_width() / 2 + 200, window_get_height() / 2 + 200, window_get_width() / 2 - 200, window_get_height() / 2 + 250, xp, c_black, c_green, c_lime, 1, true, true)
draw_text(window_get_width() / 2, window_get_height() / 2 + 100, $"{xp}/100")