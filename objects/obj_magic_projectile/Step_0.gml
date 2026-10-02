if (
 x < 0 ||
 y < 0 ||
 x > room_width ||
 y > room_height ||
 place_meeting(x, y, obj_wall) ||
 place_meeting(x, y, obj_enemy_ghost) ||
 distance_to_object(obj_player) > 100
 )
 {
    instance_destroy();
 }