function SpawnEnemy(){
	var _xx = random(room_width);
	var _yy = random(room_width);
	instance_create_depth(_xx, _yy, oPlayer.depth, oEnemy);
}	

enemyTimer = 2

spawner_enemy = time_source_create(time_source_game, enemyTimer, time_source_units_seconds, SpawnEnemy, [], -1);
time_source_start(spawner_enemy);