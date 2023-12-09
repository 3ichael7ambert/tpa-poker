image_single = 1;
var __b__;
__b__ = action_if((dealer.mode=0) && dealer.bet);
if __b__
{
{
dealer.mode = 1;
with (dealer) {
action_set_alarm(1, 0);
}
action_sound(flip, 0);
}
}
else
{
{
__b__ = action_if(dealer.mode=2);
if __b__
{
{
dealer.mode = 3;
with (dealer) {
action_set_alarm(1, 2);
}
action_sound(flip, 0);
}
}
else
{
{
action_sound(nono, 0);
}
}
}
}
action_set_alarm(3, 0);
