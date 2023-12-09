var __b__;
__b__ = action_if(dealer.mode=2);
if __b__
{
{
draw = 1-draw;
image_single = (53+backs)*draw+(1-draw)*side[0];
action_sound(choosesnd, 0);
}
}
else
{
{
action_sound(nono, 0);
}
}
