health = 200

phy_fixed_rotation = true
player_gravity = 0
player_vspeed = 0

mov_spd = 5


for(var _i = 1; _i > 0; _i--)
{
	instance_create_depth(x, y, depth, liquid_obj)
}


player = instance_find(player_obj, 0)


