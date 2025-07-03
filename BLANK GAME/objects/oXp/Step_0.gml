if (global.paused) {
    // Não faz nada enquanto o jogo estiver pausado
    return;
}

move_towards_point(oPlayer.x, oPlayer.y, 10)