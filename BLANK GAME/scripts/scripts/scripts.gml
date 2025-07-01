#region Enemy Spawner

function SpawnEnemy(){
	var _xx = random(room_width);
	var _yy = random(room_width);
	instance_create_depth(_xx, _yy, oPlayer.depth, oEnemy);
}	

global.enemyTimer = 2

global.spawner_enemy = time_source_create(time_source_game, enemyTimer, time_source_units_seconds, SpawnEnemy, [], -1);
time_source_start(global.spawner_enemy);

#endregion

function gamePause(){
	instance_deactivate_all(true)
	time_source_pause(global.spawner_enemy)
	global.paused = true
}

function gameResume(){
	instance_activate_all()
	time_source_resume(global.spawner_enemy)
	global.paused = false
	global.pausedSurf = -1
	layer_set_visible("Pause", false)
	layer_set_visible("LevelUP", false);
}