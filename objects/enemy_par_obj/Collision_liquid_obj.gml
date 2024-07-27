var _xdiff = other.phy_speed_x - phy_speed_x
var _ydiff = other.phy_speed_y - phy_speed_y
	 
var _totaldiff = (abs(_xdiff) + abs(_ydiff))


// hit if the difference between directional velocity is great enough
if(_totaldiff >= 3 && other.canhit){
	other.canhit = false
	other.alarm[0] =  0.5 * game_get_speed(gamespeed_fps)
	health -= 1
}









