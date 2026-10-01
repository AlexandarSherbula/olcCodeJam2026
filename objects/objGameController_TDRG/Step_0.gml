if (countdown > 0.0)
	countdown -= delta_time / 1000000;
else
	countdown = 0.0;

if (countdown == 0.0)
	raceStarted = true;
	
if (keyboard_check_pressed(vk_space))
{
	if (gamePaused)
		gamePaused = false;
	else
		gamePaused = true;
}
