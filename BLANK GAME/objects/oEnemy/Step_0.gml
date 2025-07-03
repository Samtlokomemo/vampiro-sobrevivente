if (global.paused) {
    speed = 0
    // Não faz nada enquanto o jogo estiver pausado
    return;
}

move_towards_point(oPlayer.x, oPlayer.y, spd + oPlayer.nivel/5)
if(life <= 0){
	instance_destroy(id)	
}