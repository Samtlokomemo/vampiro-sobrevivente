global.gameover = false
global.levelup = false

alpha = 1
alarm[0] = 30
paused = false
paused_surf = -1


#region Enemy Spawner

function SpawnEnemy(){
	var _xx = random(room_width);
	var _yy = random(room_width);
	instance_create_depth(_xx, _yy, oPlayer.depth, oEnemy);
}	

enemyTimer = 2

spawner_enemy = time_source_create(time_source_game, enemyTimer, time_source_units_seconds, SpawnEnemy, [], -1);
time_source_start(spawner_enemy);

#endregion

function gamePause(){
	instance_deactivate_all(true)
	time_source_pause(spawner_enemy)
	paused = true
}

function gameResume(){
	instance_activate_all()
	time_source_resume(spawner_enemy)
	paused_surf = -1
	paused = false
}