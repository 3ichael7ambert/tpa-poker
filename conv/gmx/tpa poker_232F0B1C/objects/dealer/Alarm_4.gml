action_set_relative(1);
score += credits;
action_highscore();
var __b__;
__b__ = action_if_question("Do you want to play again?");
if __b__
{
{
action_restart_game();
}
}
else
{
{
action_end_game();
}
}
action_set_relative(0);
