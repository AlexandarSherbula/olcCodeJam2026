var h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var v = keyboard_check(ord("S")) - keyboard_check(ord("W"));

var new_x = x + h * move_speed;
var new_y = y + v * move_speed;

// Horizontal collision
if (!place_meeting(new_x, y, objWall_DC)) 
    x = new_x;

// Vertical collision
if (!place_meeting(x, new_y, objWall_DC)) 
    y = new_y;