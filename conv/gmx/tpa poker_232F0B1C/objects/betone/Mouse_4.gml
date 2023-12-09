action_set_relative(0);
image_single = 1;
var __b__;
__b__ = action_if((dealer.mode=0) && dealer.credits && (dealer.bet<5));
if __b__
{
{
{
action_set_relative(1);
dealer.credits += -1;
action_set_relative(0);
}
{
action_set_relative(1);
dealer.bet += 1;
action_set_relative(0);
}
action_sound(betting, 0);
}
}
else
{
{
action_sound(nono, 0);
}
}
action_set_alarm(3, 0);
action_set_relative(0);
