gravity = 0.1
if(keyboard_check_pressed(vk_space)){
	y -= 5
	vspeed = -10
}

var _hmov = keyboard_check(ord("D")) - keyboard_check(ord("A"))

move_and_collide(_hmov, 0, collider_par_obj)
