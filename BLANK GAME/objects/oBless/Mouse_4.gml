if global.levelup{
	global.levelup = false;
	layer_set_visible("LevelUP", false);
	instance_activate_all();
	time_source_resume(oEnemySpawner.spawner_enemy);
}