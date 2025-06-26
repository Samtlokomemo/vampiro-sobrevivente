if room == Room1{
	if keyboard_check_pressed(vk_escape) and !global.gameover and !global.levelup{
		paused = !paused
		if !paused and !global.levelup{
			instance_activate_all()
			time_source_resume(oEnemySpawner.spawner_enemy)
			surface_free(paused_surf)
				paused_surf = -1
		}	
	}
	if paused{
		alarm[1]++;	
		alarm[2]++;	
	}
	if global.levelup{
		alarm[1]++;
		alarm[2]++;
	}
}
show_debug_message($"Pausado: {paused}\nLevelUP: {global.levelup}")