hp = 200

phy_fixed_rotation = true
player_gravity = 0
player_vspeed = 0

mov_spd = 5


player = instance_find(player_obj, 0)

alarm[0] = shoot_time * game_get_speed(gamespeed_fps)
