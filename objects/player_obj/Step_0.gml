//y += player_vspeed
//player_vspeed += player_gravity

if(keyboard_check_pressed(vk_space)){
	phy_speed_y = -5
	player_vspeed = -3
	player_gravity = 0
	player_gravity_inc = 0.01
}
if(phy_speed_y != 0 ){
show_debug_message(phy_speed_y)}
if(player_gravity_inc == 0)
{ 
	phy_speed_y = 0 
}

phy_speed_y += player_gravity
player_gravity += player_gravity_inc

var _hmov = keyboard_check(ord("D")) - keyboard_check(ord("A"))

phy_speed_x = 3 * _hmov

//move_and_collide(_hmov * mov_spd, player_vspeed, collider_par_obj)


var _floor = collision_rectangle(phy_position_x - (sprite_width/2), phy_position_y - (sprite_height/2), phy_position_x + (sprite_width/2), phy_position_y + (sprite_height/2), floor_obj, false, true)
if (_floor && _floor.y + 0.25 >= (phy_position_y - (sprite_height/2)))
{
	phy_speed_y = 0
	phy_position_y = _floor.y - (((_floor.sprite_height/2) + (sprite_height/2)) + 0.25)
	player_gravity = 0
	player_gravity_inc = 0
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
//instance_create_depth(x, y, depth, liquid_obj)


//physics_particle_create(flags, x, y, _hmov * 500, 0, c_white, 1, 1)

//can_spawn += 1