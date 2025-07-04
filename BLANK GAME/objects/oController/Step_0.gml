if (global.levelup) {
    gamePause();
    var bless = getRandomBlesses(3);

    for (var i = 0; i < 3; i++) {
        var x_pos = 60 + 100 * i; // ajuste a posição como preferir
        var y_pos = room_height / 2;

        var card = instance_create_depth(x_pos, y_pos, -100, oBless);
        card.setData(bless[i]); // passa os dados da bless
    }
} else {
    with (oBless) {
        instance_destroy();
    }
}