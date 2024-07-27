if(!surface_exists(water_surface))
{
	water_surface = surface_create(room_width, room_height)
}


pW = texture_get_texel_width(surface_get_texture(water_surface))
pH = texture_get_texel_height(surface_get_texture(water_surface))

surface_set_target(water_surface)
	draw_clear_alpha(c_black, 0)
	
	
	with(liquid_obj)
	{
		draw_self()	
	}	
surface_reset_target()

draw_set_alpha(0.5)
draw_surface(water_surface, 0, 0)
draw_set_alpha(1)

