action_set_relative(0);
image_single = 1;
var __b__;
__b__ = action_if(dealer.mode=0);
if __b__
{
{
{
action_set_relative(1);
dealer.credits += dealer.bet;
action_set_relative(0);
}
__b__ = action_if(dealer.credits>4);
if __b__
{
{
dealer.bet = 5;
{
action_set_relative(1);
dealer.credits += -5;
action_set_relative(0);
}
}
}
else
{
{
dealer.bet = dealer.credits;
dealer.credits = 0;
}
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
