if(other.connector != false && connector != true){
	connector = other
}
if(connector != false)
{
	
	var _xdiff = x - other.x
	var _ydiff = y - other.y

	phy_speed_x = (_xdiff / -(abs(_xdiff) + abs(_ydiff))) * -20
	phy_speed_y = (_ydiff / -(abs(_xdiff) + abs(_ydiff))) * -20
}


