

for(var _i = 20; _i > 0; _i--)
{
	var _droplet = instance_create_depth(x, y, 200, lava_obj)
	
	var _xdiff = x - player.x
	var _ydiff = y - player.y
	 
	var _totaldiff = (abs(_xdiff) + abs(_ydiff))

	_droplet.phy_speed_x = (_xdiff / -_totaldiff) *5 
	_droplet.phy_speed_y = (_ydiff / -_totaldiff) * 5
}

//alarm[0] = shoot_time * game_get_speed(gamespeed_fps)


