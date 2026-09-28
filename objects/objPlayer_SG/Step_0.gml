var move_speed = 5.0;

var h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var v = keyboard_check(ord("S")) - keyboard_check(ord("W"));

x += h * move_speed;
y += v * move_speed;


if (x < 0) x = 0;
if (x > room_width - sprite_width) x = room_width - sprite_width;
if (y < 0) y = 0;
if (y > room_height - sprite_height) y = room_height - sprite_height;
