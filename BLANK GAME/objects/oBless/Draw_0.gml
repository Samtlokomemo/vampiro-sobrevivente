draw_self()
draw_set_alpha(1);
image_blend = getRarityColor(rarity);
draw_text_transformed(x, y + 5, name, text_scale, text_scale, 0);
draw_text_transformed(x, y + 15, description, text_scale - .1, text_scale - .1, 0);
