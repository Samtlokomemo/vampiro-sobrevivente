timer--;
if(!instance_exists(oEnemy) or timer <=0){
	timer = 120
	instance_create_depth(random(room_width), random(room_height), depth, oEnemy)
}