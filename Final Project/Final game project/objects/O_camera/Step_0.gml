if (instance_exists(O_player)){
	var cam_x = round(O_player.x - camera_get_view_width(cam) / 2);
	var cam_y = round(O_player.y - camera_get_view_height(cam) / 2);
	target_x = clamp(target_x, 0, room_width - cam_width);
	target_y = clamp(target_y, 0, room_height - cam_height);
	camera_set_view_pos(cam, target_x, target_y);
	
}