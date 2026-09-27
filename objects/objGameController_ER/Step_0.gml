var w = 672;
scroll_speed = 4;

// Move both layers left
layer_x("GroundA", layer_get_x("GroundA") - scroll_speed);
layer_x("GroundB", layer_get_x("GroundB") - scroll_speed);

// Wrap GroundA
if (layer_get_x("GroundA") <= -w) 
{
    layer_x("GroundA", w);
}

// Wrap GroundB
if (layer_get_x("GroundB") <= - 2 * w) 
{
    layer_x("GroundB", 0);
}