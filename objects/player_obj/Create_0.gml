//flags = phy_particle_flag_water | phy_particle_flag_tensile | phy_particle_flag_viscous
//physics_particle_set_radius(4)
//physics_particle_set_density(0.5)
for(var _i = 100; _i > 0; _i--)
{
	instance_create_depth(x, y, depth, liquid_obj)
}

phy_fixed_rotation = true
player_gravity_inc = 0.01
player_gravity = 0
player_vspeed = 0

mov_spd = 5

// this is the animation state
state = 0

//can_spawn = 0

//water_surface = surface_create(room_width, room_height)