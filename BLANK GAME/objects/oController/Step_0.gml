if room == Room1{
	if keyboard_check_pressed(vk_escape){
		paused = !paused
		if !paused{
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
}