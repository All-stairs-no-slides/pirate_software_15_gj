physics_particle_delete_region_box(0, room_height - 32, room_width, 32)

if(mouse_check_button_pressed(mb_left))
{
	var _controller = instance_nearest(mouse_x, mouse_y, liquid_obj)
	_controller.connector = true
}

if(!instance_exists(enemy_par_obj))
{
	room_goto(end_rm)
}




