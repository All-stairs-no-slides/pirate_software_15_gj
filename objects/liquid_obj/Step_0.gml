if(mouse_check_button_released(mb_left) && connector)
{
	var _xdiff = x - mouse_x
	var _ydiff = y - mouse_y
	 
	var _totaldiff = (abs(_xdiff) + abs(_ydiff))
	
	phy_speed_x = (_xdiff / -_totaldiff) * min((25 /  (_totaldiff / (((room_width + room_height) * 5) / 100))), 5)
	phy_speed_y = (_ydiff / -_totaldiff) * min((25 /  (_totaldiff / (((room_width + room_height) * 5) / 100))), 5)
	connector = false
}

if(connector == true || !is_bool(connector))
{
	var _xdiff = x - mouse_x
	var _ydiff = y - mouse_y
	 
	var _totaldiff = (abs(_xdiff) + abs(_ydiff))

	phy_speed_x = (_xdiff / -_totaldiff) * min((25 /  (_totaldiff / (((room_width + room_height) * 5) / 100))), 5)
	phy_speed_y = (_ydiff / -_totaldiff) * min((25 /  (_totaldiff / (((room_width + room_height) * 5) / 100))), 5)
} 
