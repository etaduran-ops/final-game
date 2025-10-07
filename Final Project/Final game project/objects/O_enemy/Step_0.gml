if (instance_exists(O_player)){
	var dist = point_distance(x, y, O_player.x, O_player.y);
	if (dist < 200){
		move_towards_point(O_player.x, O_player.y, speed);
	} else {
		speed = 0;
	}
}