instance_destroy(other)
isHited = true
alarm[0] = 3
life -= oPlayer.dano
if(oPlayer.nivel > 1){
	var _chance = choose(0, 0, 0, 1)
	if(_chance == 1){
		instance_create_depth(x + 10, y + 10, depth, oEnemy)
	}
}