player_gravity_inc = 0.01
if(keyboard_check(ord("F")) && canshoot)
{
	for(var _i = 2; _i > 0; _i--)
	{
		instance_create_layer(x, y, "liquids", water_obj)
	}
	alarm[0] = game_get_speed(gamespeed_fps) * 0.2
	canshoot = false
}

if(keyboard_check_pressed(vk_space)){
	phy_speed_y = -5
	// look, its temporary but fuck u
	phy_position_y -= 0.5
	player_vspeed = -3
	player_gravity = 0 
}
if(player_gravity_inc == 0)
{ 
	phy_speed_y = 0 
}

var _hmov = keyboard_check(ord("D")) - keyboard_check(ord("A"))

phy_speed_x = 3 * _hmov


var _floor = collision_rectangle(phy_position_x - 16, phy_position_y - 10, phy_position_x + 12, phy_position_y + 32, floor_obj, false, true)
if (_floor)
{
	
	if(_floor.y < phy_position_y)
	{
		phy_position_y = _floor.y + (((_floor.sprite_height/2) + (sprite_height/2)) + 0.25)
	}
	else if(_floor.y + 0.35 >= (phy_position_y - (sprite_height/2)))
	{
		phy_speed_y = 0
		phy_position_y = _floor.y - (((_floor.sprite_height/2) + (sprite_height/2)) + 0.25)
		player_gravity = 0
		player_gravity_inc = 0
	} 
}


phy_speed_y += player_gravity
if(player_gravity < 5){
	player_gravity += player_gravity_inc 
}
switch(_hmov)
{
	case 0:
		image_index = 0
	break;
	
	
	case 1:
		image_index = max(image_index % 17, 6)
		image_xscale = 1
	break;
	
	case -1:
		image_index = max(image_index % 17, 6)
		image_xscale = -1
	break;
}
