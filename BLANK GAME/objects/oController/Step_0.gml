if global.levelup{
    gamePause();
    for (var i = 1; i < 4; i++) {
        instance_create_depth(75 * i, room_height / 2, -100, oBless)
        instance_activate_object(oBless);
    }
}else{
    instance_destroy(oBless)
}