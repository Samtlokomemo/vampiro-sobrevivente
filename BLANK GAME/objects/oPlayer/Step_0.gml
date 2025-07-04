if (global.paused) {
    // Não faz nada enquanto o jogo estiver pausado
    return;
}

var _up		= keyboard_check(ord("W"));
var _left	= keyboard_check(ord("A"));
var _down	= keyboard_check(ord("S"));
var _right	= keyboard_check(ord("D"));

var _moveX = (_right - _left) * spd;
var _moveY = (_down - _up) * spd;

x += _moveX;
y += _moveY;

atkSpd--
if atkSpd <= 0{
	atkSpd = atkSpdInicial;
	var _proj = instance_create_depth(x, y, depth, oProjetil)
	_proj.speed = projSpd;
	_proj.direction = point_direction(x, y, mouse_x, mouse_y)
}

inv--
if place_meeting(x,y,oEnemy) and inv <= 0{
	inv = 10
	isHited = true;
	alarm[0] = 3
	life-=10	
}

if(life<=0){
	global.gameover = true
	time_source_destroy(global.spawner_enemy)
}
if(xp == 100){
	xp = 0
	nivel += 1
	global.enemyTimer -= .1
	global.levelup = true;
	
    //Curar um pouco ao subir de nivel
	if(life < maxLife){
		life += (life * 0.4)
	}
}






x = clamp(x, 0 + sprite_width / 2, room_width - sprite_width / 2)
y = clamp(y, 0 + sprite_height / 2, room_height - sprite_height / 2)