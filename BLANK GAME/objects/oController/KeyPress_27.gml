if !global.paused and !global.levelup and !global.gameover{
	gamePause()
	layer_set_visible("Pause", true)
}else if global.paused and !global.levelup and !global.gameover{
	gameResume()
}