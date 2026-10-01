if (!objGameController_TDRG.gamePaused)
{
	y += objPlayerCar_TDRG.move_speed;

	if (y > 192)
	{
		y -= (cam_height + sprite_height);
	}
}