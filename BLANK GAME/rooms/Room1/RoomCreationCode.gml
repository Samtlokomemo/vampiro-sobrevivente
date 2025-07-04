function SpawnEnemy(){
	var _xx = random(room_width);
	var _yy = random(room_width);
	instance_create_depth(_xx, _yy, oPlayer.depth, oEnemy);
}	

global.enemyTimer = 2

global.spawner_enemy = time_source_create(time_source_game, global.enemyTimer, time_source_units_seconds, SpawnEnemy, [], -1);
time_source_start(global.spawner_enemy);