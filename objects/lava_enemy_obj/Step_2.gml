if(phy_position_x > player.phy_position_x)
{
	phy_speed_x = max(-3, phy_speed_x - 0.1)
	image_xscale = -1
	image_index = max(image_index % 17, 6)
}
if(phy_position_x < player.phy_position_x)
{
	phy_speed_x = min(3, phy_speed_x + 0.1)
	image_xscale = 1
	image_index = max(image_index % 17, 6)
}













