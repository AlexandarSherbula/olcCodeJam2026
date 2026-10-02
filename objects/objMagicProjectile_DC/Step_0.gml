if (
 x < 0 ||
 y < 0 ||
 x > room_width ||
 y > room_height ||
 place_meeting(x, y, objWall_DC) ||
 place_meeting(x, y, objGhost_DC) ||
 distance_to_object(objPlayer_DC) > 100
 )
 {
    instance_destroy();
 }