function gamePause(){
    global.paused = true;
    
    //Deixar a sala amarela
    bgId = layer_background_get_id("Background")
    layer_background_blend(bgId, #5B7A23);
    layer_hspeed("Background", .1)
    layer_vspeed("Background", -.1)

    // Pausa spawners do jogo
    time_source_pause(global.spawner_enemy);
}

function gameResume(){
    bgId = layer_background_get_id("Background")
    layer_background_blend(bgId, #4A237A);
    layer_hspeed("Background", .4)
    layer_vspeed("Background", .4)
    
	time_source_resume(global.spawner_enemy)
	global.paused = false
	global.pausedSurf = -1
	layer_set_visible("Pause", false)
}