instance_destroy(other)
isHited = true
alarm[0] = 3
life -= oPlayer.dano
if(oPlayer.nivel > 1){
	show_message("SPAWNEI")
	var _chance = random_range(1, 1)
	if(_chance == 1){
		
		instance_create_depth(x + 10, y + 10, depth, oEnemy)
	}
}