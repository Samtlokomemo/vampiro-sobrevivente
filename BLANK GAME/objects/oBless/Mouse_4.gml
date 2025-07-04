if global.levelup{
    if buff_function != noone{
        buff_function();
    }
	global.levelup = false;
    gameResume();
    
}