var h = keyboard_check(vk_right) - keyboard_check(vk_left);
var v = keyboard_check(vk_down) - keyboard_check(vk_up);

var oldx = x;
var oldy = y;

x += h * move_speed;
if (place_meeting(x, y, O_maze)) x = oldx;

y += v * move_speed;
if (place_meeting(x, y, O_maze)) y = oldy;

if (mouse_check_button_pressed(mb_left)) && (can_shoot) {
	var b = instance_create_layer(x, y, "Instances", O_bullet);
	b.direction = point_direction(x, y, mouse_x, mouse_y); 
	can_shoot = false;
	alarm [0] = 15; 
}

